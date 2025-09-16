#include <mcs51/8052.h>

// Số vòng lặp đếm Timer 1 rồi mới thực hiện xử lý (50ms/vong)
const int x50ms = 20;  // Tương ứng với 1s sẽ giảm giá trị thời gian 1 lần
int startCountDown = 0;  // 0: Chưa đếm ngược - 1: Bắt đầu đếm ngược
int minutes = 0, seconds = 0;

// Tạo độ trễ chính xác (ms) sử dụng Timer 0
void delay_ms(long ms) {
    ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
    while (ms > 0) {
        // Xóa thiết lập cũ của Timer0
        TMOD = TMOD & 0xF0;
        // Thiết lập Mode 1, 16-bit Timer/Counter
        TMOD = TMOD | 0x01;
        ET0 = 0;  // Che ngắt Timer 0
        // Kiểm tra xem số ckm còn lại có lớn hơn 65536
        if (ms >= 65536) {
            // Nếu lớn hơn thiết lập giá trị thanh ghi về 0
            TH0 = 0;
            TL0 = 0;
            ms -= 65536;
        } else {
            // Nếu nhỏ hơn thiết lập giá trị thanh ghi về 65536 - ms
            ms = 65536 - ms;
            TH0 = ms / 256;
            TL0 = ms % 256;
            ms = 0;
        }
        TF0 = 0;  // Xóa cờ tràn Timer 0
        TR0 = 1;  // Khởi động Timer 0
        while (TF0 == 0)
            ;     // Chờ đến khi tràn số
        TR0 = 0;  // Dừng Timer 0
    }
}

// Bật còi trong 1s
void turnOnBuzzer_1s() {
    P3_6 = 1;
    delay_ms(1000);
    P3_6 = 0;
}

int countDownLoop;  // Lưu trữ số vòng lặp còn phải đếm của Timer 1
// Khoi tao Timer 1
void initilize_timer1() {
    countDownLoop = x50ms;  // Khởi tạo số vòng lặp là 20
    TMOD = TMOD & 0x0F;     // Xóa các thiết lập cũ của Timer 1
    TMOD = TMOD | 0x10;     // Thiết lập Mode 1, 16-bit Timer/Counter
    TH1 = 0x3C;             // Khởi tạo T1
    TL1 = 0xB0;             // tương đương 15536
    TF1 = 0;                // Xóa cờ tràn Timer 1
    TR1 = 1;                // Khoi dong timer 1
    ET1 = 1;                // Cho phép Timer 1 ngắt
    EA = 1;                 // Cho phép ngắt tổng thể
}

// Dừng Timer 1
void stop_timer1() { TR1 = 0; }

// Xử lý ngắt Timer 1
void timer1_interrupt() __interrupt(3) {
    TF1 = 0;     // Xóa cờ tràn
    TR1 = 0;     // Dừng Timer 1
    TH1 = 0x3C;  // Khởi tạo T1
    TL1 = 0xB0;  // tương đương 15536

    // Bắt đầu xử lý giảm thời gian
    // Kiểm tra xem vòng lặp Timer 1 có bằng 0 hay chưa
    if (countDownLoop == 0) {
        // Nếu bằng 0 thì đã đếm đủ 1s nên thực hiện giảm thời gian
        EA = 0;
        if (seconds == 0) {
            if (minutes == 0) {
                // Nếu thời gian đếm ngược bằng 0 -> Dừng đếm ngược
                if (startCountDown) startCountDown = 0;
                // Kết thúc đếm ngược còi kêu 3 lần mỗi lần 1s cách nhau 0,3s
                turnOnBuzzer_1s();
                delay_ms(300);
                turnOnBuzzer_1s();
                delay_ms(300);
                turnOnBuzzer_1s();
                delay_ms(300);
            } else {
                // Nếu số giây = 0 và số phút > 0
                seconds = 59;
                minutes--;
            }
        } else {
            // Nếu số giây > 0 thực hiện giảm 1s
            seconds--;
        }
        // Thiết lập lại số vòng lặp Timer 1 để tiếp tục đếm 1s
        countDownLoop = x50ms;
        EA = 1;
    } else {
        // Nếu chưa đếm đủ 1s giảm số vòng lặp Timer 1 đi 1
        countDownLoop--;
    }
    TR1 = 1;  // Khời động lại Timer 1
}

// Khởi tạo ngắt ngoài 0
void initilize_int0() {
    P3_2 = 1;  // P3_2 là input
    EX0 = 1;   // Cho phép ngắt ngoài 0
    IT0 = 1;   // Ngắt theo sườn xuống
    EA = 1;    // Cho phép ngắt toàn cục
}

// Xử lý ngắt ngoài 0
void external0_interrupt() __interrupt(0) {
    EA = 0;  // Che toàn bộ các ngắt
    // Thực hiện tăng sô phút đếm ngược
    if (minutes < 60)
        minutes++;
    else
        minutes = 0;
    EA = 1;  // Cho phép ngắt toàn cục
}

// Khởi tạo ngắt ngoài 1
void initilize_int1() {
    P3_3 = 1;  // P3_3 là input
    EX1 = 1;   // Cho phép ngắt ngoài 1
    IT1 = 1;   // Ngắt theo sườn xuống
    EA = 1;    // Cho phép ngắt toàn cục
}

// Xử lý ngắt ngoài 1
void external1_interrupt() __interrupt(2) {
    EA = 0;  // Che toàn bộ các ngắt
    // Thực hiện đảo trạng thái đếm ngược hay không đếm ngược
    startCountDown = 1 - startCountDown;
    EA = 1;  // Cho phép ngắt tổng thể
}

// Hiển thị led 7 thanh
// value: giá trị số muốn hiển thị ở dạng số nguyên (0 - 9)
// dpDisplay: tùy chọn hiển thị dấu '.' (1 là cho phép hiển thị)
void output_7seg(unsigned char value, unsigned char dpDisplay) {
    // Mảng lưu trữ mã hex led 7 thanh của các số từ 0 - 9
    unsigned char const mask[10] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99,
                                    0x92, 0x82, 0xF8, 0x80, 0x90};
    if (value < 10) {
        if (dpDisplay > 0)
            P1 = (mask[value] & 0x7F);
        else
            P1 = mask[value];
    }
}

// Quét lần lượt các số của led 7 thanh 4 số
// iNum: giá trị số muốn hiển thị ở dạng số nguyên (0 - 9999)
// loop: số vòng lặp quét led để tăng thời gian hiển thị số
void display_number(int iNum, int loop) {
    while (loop > 0) {
        int num = iNum;
        int i, temp;
        unsigned char pos = 0x08;  // Cho digit 4 sáng (hàng đơn vị)
        // Hiển thị lần lượt 4 chữ số
        for (i = 0; i < 4; i++) {
            temp = num % 10;
            num = num / 10;
            P2 = pos ^ 0xFF;
            if (i == 2)
                // Nếu số thứ 2 (hàng trăm) sáng thực hiện hiển thị '.'
                output_7seg(temp, 1);
            else
                output_7seg(temp, 0);
            delay_ms(10);
            pos = pos >> 1;  // Dịch bit để chuyển chữ số hiển thị
        }
        loop--;
    }
}

int main() {
    P3_6 = 0;  // Tắt còi
    // Khởi tạo các ngắt ngoài
    initilize_int0();
    initilize_int1();
    while (1) {
        if (startCountDown == 1) {
            // Nếu đang đếm ngược và Timer 1 chưa chạy
            // thì thực hiện khởi tạo Timer 1
            if (TR1 == 0) initilize_timer1();
        } else {
            // Ngược lại thực hiện dừng Timer 1
            if (TR1 == 1) stop_timer1();
        }
        // Hiển thị thời gian
        display_number(minutes * 100 + seconds, 1);
    }
}
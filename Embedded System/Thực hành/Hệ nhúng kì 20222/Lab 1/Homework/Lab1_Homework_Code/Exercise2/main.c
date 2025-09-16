#include <mcs51/8052.h>

#define led P1
int i, j, k;
int hieu_ung_hien_tai = 1;  // 3 hiệu ứng tương ứng với 1, 2 và 3
int delayms = 100;          // Thời gian trễ giữa các lần sáng led

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

// Hiệu ứng 1
void hieu_ung_1() {
    led = 0xFF;  // Tắt tất cả led
    delay_ms(delayms);

    unsigned char hieu_ung_1 = 0x03;  // Cho 2 led đầu sáng
    // Cho 2 led sáng chạy từ đầu đến cuối
    for (j = 0; j < 7; j++) {
        // Kiểm tra xem hiệu ứng đã thay đổi hay chưa
        if (hieu_ung_hien_tai != 1) return;

        led = ~hieu_ung_1;
        delay_ms(delayms);
        hieu_ung_1 = hieu_ung_1 << 1;
    }

    // Cho 2 led sáng chạy từ cuói đến đầu
    hieu_ung_1 = 0xC0;  // Cho 2 led cuối sáng
    for (j = 0; j < 7; j++) {
        // Kiểm tra xem hiệu ứng đã thay đổi hay chưa
        if (hieu_ung_hien_tai != 1) return;

        led = ~hieu_ung_1;
        delay_ms(delayms);
        hieu_ung_1 = hieu_ung_1 >> 1;
    }
}

// Hiệu ứng 2
void hieu_ung_2() {
    led = 0xFF;  // Tắt tất cả led
    delay_ms(delayms);

    // giu_hieu_ung lưu trữ trạng thái sáng của các led đã được dịch đến cuối
    unsigned char giu_hieu_ung = 0x00;
    // countled là số vòng lặp để dịch led (giảm dần)
    int countled = 8;

    // Hiệu ứng sáng dần
    for (j = 0; j < 8; j++) {
        unsigned char hieu_ung_2 = 0x01;  // bật sáng led đầu tiên
        // Bắt đầu vòng lặp dịch led đưa led về cuối
        for (k = 0; k < countled; k++) {
            // Kiểm tra xem hiệu ứng đã thay đổi hay chưa
            if (hieu_ung_hien_tai != 2) return;

            // Kết hợp trạng thái sáng của led đang bị dịch và các led đã ở cuối
            led = ~(hieu_ung_2 | giu_hieu_ung);
            delay_ms(delayms);
            // Kiểm tra xem đã đến cuối vòng dịch led chưa
            // Nếu chưa thì tiếp tục dịch led
            if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
        }
        // Khi led đã ở cuối lưu trữ lại trạng thái sáng của các led ở cuối
        giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
        countled--;  // Giảm vòng lặp dịch led
    }

    // Hiệu ứng tắt dần
    for (j = 0; j < 8; j++) {
        // Kiểm tra xem hiệu ứng đã thay đổi hay chưa
        if (hieu_ung_hien_tai != 2) return;
        // Lúc này tất cả các led đã sáng nên giu_hieu_ung = 0xFF
        led = ~giu_hieu_ung;
        delay_ms(delayms);
        // Dịch từng bit của giu_hieu_ung sang phải để tắt led
        giu_hieu_ung = giu_hieu_ung >> 1;
    }
}

// Hiệu ứng 3
void hieu_ung_3() {
    led = 0xFF;  // Tắt tất cả các led
    delay_ms(delayms);

    unsigned char hieu_ung_3_1 = 0x01;  // Bật led đầu tiên
    unsigned char hieu_ung_3_2 = 0x80;  // Bật led cuối cùng
    for (j = 0; j < 8; j++) {
        // Kiểm tra xem hiệu ứng đã thay đổi hay chưa
        if (hieu_ung_hien_tai != 3) return;
        led = ~(hieu_ung_3_1 | hieu_ung_3_2);
        // Kiểm tra led 4, 5 có đang bị sáng lặp lại do dịch bit đối xứng không
        // Nếu không thì cho phép trễ
        if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
        // Dịch 2 led dần dần sáng vào trong và rồi sáng lại ra phía ngoài
        hieu_ung_3_1 = hieu_ung_3_1 << 1;
        hieu_ung_3_2 = hieu_ung_3_2 >> 1;
    }
}

// Khởi tạo ngắt ngoài 0 và 1
void initExtInterrupt() {
    P3_2 = 1;
    P3_3 = 1;
    IT0 = 1;
    IT1 = 1;
    IE = 0x85;
}

// Xử lý ngắt ngoài 0
void ISR0() __interrupt(0) {
    EA = 0;  // Che toàn bộ các ngắt
    // Chuyển sang hiệu ứng trước
    if (hieu_ung_hien_tai == 1)
        hieu_ung_hien_tai = 3;
    else
        hieu_ung_hien_tai--;
    EA = 1;  // Cho phép ngắt toàn cục
}

// Xử lý ngắt ngoài 1
void ISR1() __interrupt(2) {
    EA = 0;  // Che toàn bộ các ngắt
    // Chuyển sang hiệu ứng sau
    if (hieu_ung_hien_tai == 3)
        hieu_ung_hien_tai = 1;
    else
        hieu_ung_hien_tai++;
    EA = 1;  // Cho phép ngắt toàn cục
}

int main() {
    // Khởi tạo 2 ngắt ngoài 0 và 1
    initExtInterrupt();
    while (1) {
        // Kiểm tra hiệu ứng hiện tại và cho chạy hiệu ứng đó
        if (hieu_ung_hien_tai == 1) {
            hieu_ung_1();
        } else if (hieu_ung_hien_tai == 2) {
            hieu_ung_2();
        } else if (hieu_ung_hien_tai == 3) {
            hieu_ung_3();
        }
    }
}
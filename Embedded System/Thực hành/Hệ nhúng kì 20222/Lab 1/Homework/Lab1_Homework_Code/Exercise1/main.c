#include <mcs51/8052.h>

#define led P1

int i, j, k;
int delayms = 100;  // Thời gian trễ giữa các lần sáng led

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
        led = ~hieu_ung_1;
        delay_ms(delayms);
        hieu_ung_1 = hieu_ung_1 << 1;
    }

    // Cho 2 led sáng chạy từ cuói đến đầu
    hieu_ung_1 = 0xC0;  // Cho 2 led cuối sáng
    for (j = 0; j < 7; j++) {
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
        led = ~(hieu_ung_3_1 | hieu_ung_3_2);
        // Kiểm tra led 4, 5 có đang bị sáng lặp lại do dịch bit đối xứng không
        // Nếu không thì cho phép trễ
        if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
        // Dịch 2 led dần dần sáng vào trong và rồi sáng lại ra phía ngoài
        hieu_ung_3_1 = hieu_ung_3_1 << 1;
        hieu_ung_3_2 = hieu_ung_3_2 >> 1;
    }
}

int main() {
    while (1) {
        // Cho mỗi hiệu ứng chạy 2 lần
        hieu_ung_1();
        hieu_ung_1();
        hieu_ung_2();
        hieu_ung_2();
        hieu_ung_3();
        hieu_ung_3();
    }
}
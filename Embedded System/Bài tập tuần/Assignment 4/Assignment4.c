/* ASSIGNMENT 4

Học phần: Hệ nhúng
Lớp: 141341

Nhóm sinh viên:
    Trương Văn Hiển - 20194276
    Vũ Đình Tiến    - 20194384
    Nguyễn Hữu Huấn - 20194288

Giảng viên: TS. Đỗ Công Thuần
*/


#include <at89x51.h>
#include <stdio.h>
#include <string.h>

int temp[10] = {25, 20, 23, 25, 27, 24, 30, 31, 29, 28};

// Chuong trinh tao do tre chinh xac su dung Timer
void delay_hardware_ms(long ms) {
    ms *= 1000;
    while (ms > 0) {
        // Xoa phan thiet lap cu cua Timer0
        TMOD = TMOD & 0xF0;
        // Thiet lap Mode 1, 16-bit Timer/Counter
        TMOD = TMOD | 0x01;
        ET0 = 0;  // Khong phat sinh ngat
        if (ms >= 65536) {
            TH0 = 0;
            TL0 = 0;
            ms -= 65536;
        } else {
            ms = 65536 - ms;
            TH0 = ms / 256;
            TL0 = ms % 256;
            ms = 0;
        }
        TF0 = 0;  // Xoa co tran timer 0
        TR0 = 1;  // Khoi dong timer 0
        while (TF0 == 0)
            ;     // Cho den khi tran
        TR0 = 0;  // Tat timer 0
    }
}

// -------------------------------------------------------------------------------
#define display_port P2  // Data pins connected to port 2 on microcontroller

sbit rs = P0 ^ 7;        // RS pin connected to pin 2 of port 3
sbit rw = P0 ^ 6;        // RW pin connected to pin 3 of port 3
sbit en = P0 ^ 5;        // E pin connected to pin 4 of port 3

void Wait_For_LCD() { delay_hardware_ms(1); }

// Function to send command instruction to LCD
void lcd_cmd(unsigned char command) {
    display_port = command;
    rs = 0;
    rw = 0;
    en = 1;
    delay_hardware_ms(1);
    en = 0;
    Wait_For_LCD();
    en = 1;
}

// Function to send display data to LCD
void lcd_data(unsigned char disp_data) {
    display_port = disp_data;
    rs = 1;
    rw = 0;
    en = 1;
    delay_hardware_ms(1);
    en = 0;
    Wait_For_LCD();
    en = 1;
}

// 0x01: Xóa màn hình và đưa con trỏ về vị trí ban đầu.
// 0x02: Đưa con trỏ về vị trí ban đầu mà không xóa màn hình.
// 0x03: Đưa con trỏ về vị trí ban đầu và xóa màn hình.
// 0x04: Di chuyển con trỏ sang trái một vị trí.
// 0x05: Di chuyển con trỏ sang phải một vị trí.
// 0x06: Di chuyển con trỏ sang phải một vị trí và không di chuyển nội dung.
// 0x07: Hiển thị nội dung và con trỏ nhấp nháy.
// 0x08: Tắt hiển thị nội dung.
// 0x0C: Tắt con trỏ.
// 0x0D: Bật con trỏ.
// 0x0E: Bật con trỏ và hiển thị nhấp nháy.
// 0x0F: Bật con trỏ và hiển thị nhấp nháy nhanh.
// 0x10: Di chuyển con trỏ sang trái một vị trí và không di chuyển nội dung.
// 0x14: Di chuyển con trỏ sang phải một vị trí và không di chuyển nội dung.
// 0x18: Di chuyển nội dung sang trái một vị trí.
// 0x1C: Di chuyển nội dung sang phải một vị trí.
// 0x20: Cấu hình màn hình LCD để sử dụng 1 dòng và ma trận 5x8.
// 0x28: Cấu hình màn hình LCD để sử dụng 2 dòng và ma trận 5x8.
// 0x30: Cấu hình màn hình LCD để sử dụng 3 dòng và ma trận 5x8.
// 0x38: Cấu hình màn hình LCD để sử dụng 2 dòng và ma trận 5x7.
// 0x80-0x8F: Đặt con trỏ ở vị trí từ 1 đến 16 trên dòng 1.
// 0xC0-0xCF: Đặt con trỏ ở vị trí từ 1 đến 16 trên dòng 2.
// 0x94-0x9F: Đặt con trỏ ở vị trí từ 1 đến 16 trên dòng 3.
// 0xD4-0xDF: Đặt con trỏ ở vị trí từ 1 đến 16 trên dòng 4.
// Function to prepare the LCD  and get it ready
void lcd_init() {
    P0 = 0xFF;
    lcd_cmd(0x38);  // for using 2 lines and 5X7 matrix of LCD
    lcd_cmd(0x0E);  // turn display ON, cursor blinking
    lcd_cmd(0x01);  // clear screen
    lcd_cmd(0x80);  // bring cursor to position 1 of line 1
}

void display_lcd1602(unsigned char a[]) {
    int i = 0;
    lcd_init();

    // searching the null terminator in the sentence
    while (a[i] != '\0') {
        if (i % 16 == 0) {
            if ((i / 16) % 2 == 0) {
                lcd_cmd(0x01);
                lcd_cmd(0x80);
            } else
                lcd_cmd(0xC0);
        }

        lcd_data(a[i]);
        i++;
    }
    delay_hardware_ms(1000);
}

void display_lcd1602_1(unsigned char a[], int line, int conti) {
    int i = 0;

    // searching the null terminator in the sentence
    while (a[i] != '\0') {
        if (i == 0 && conti == 0) {
            if (line == 0)
                lcd_cmd(0x80);
            else
                lcd_cmd(0xC0);
        }
        // if (i % 16 == 0) {
        //     if ((i / 16) % 2 == 0) {
        //         lcd_cmd(0x01);
        //         lcd_cmd(0x80);
        //     } else
        //         lcd_cmd(0xC0);
        // }

        lcd_data(a[i]);
        i++;
    }
    // delay_hardware_ms(1000);
}
// -------------------------------------------------------------------------------
void convert(int n, char *str) { sprintf(str, "%d", n); }

void main() {
    char str[2];
    int max = 0, min = 100, i;
    for (i = 0; i < 9; i++) {
        if (temp[i] < min) min = temp[i];
        if (temp[i] > max) max = temp[i];
    }
    lcd_init();
    display_lcd1602_1("Cur Temp:", 0, 0);
    display_lcd1602_1(" 30 C", 0, 1);
    display_lcd1602_1("L: ", 1, 0);

    convert(min, str);
    display_lcd1602_1(str, 1, 1);
    display_lcd1602_1(" H: ", 1, 1);

    convert(max, str);
    display_lcd1602_1(str, 1, 1);
    delay_hardware_ms(10000);
    lcd_cmd(0x01);
}
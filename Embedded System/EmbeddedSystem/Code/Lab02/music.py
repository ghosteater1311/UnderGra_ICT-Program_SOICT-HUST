import serial           #thu vien ket noi serial
import msvcrt           #thu vien nhan phim tu ban phim

ser = serial.Serial()   #Khoi tao serial
ser.baudrate = 9600     #Khoi tao bauq
ser.port = 'COM6'       #Dat cong COM6 cho chuong trinh ket noi voi 8051 
ser.close()             #Dong serial de ngat ket noi 
ser.open()              #Mo cong serial de giao tiep

while(True):
#    char = getch.getche() 
#    char = input()
#    char = input()[0]
    char = msvcrt.getch().decode('ASCII')   #Su kien nhap phim vao
    ser.write(bytes(char, 'utf-8'))         #Gui phim sang 8051
    
#    print(char)
    print(ser.read())                       #Doc lai tin hieu qua serial tu 8051
    if(char == '\x03'): break               #Cho phep Ctr+C de ket thuc chuong trinh

ser.close()             #Dong serial de ngat ket noi 

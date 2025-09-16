#include<stdio.h>
#include<conio.h>
#include<ctype.h>
#include<string.h>

typedef struct{
	char makh[20];   //Ma kien hang
	int l,w,h;      //dai rong cao
	double tl;       //trong luong tinh
	int loaivc;    // Loai van chuyen: 1-nhanh, 0-thuong		
}KienHang;

//////////////////////////////////////////////////////////////////
// Ham kiem tra ma kien hang co dung quy cach hay khong. Ham tra ve 1-dung, 0-sai
int checkString(char s[]){
	int i;	
	if(strlen(s)<8 || strlen(s)>20) return 0;
	for(i=0;i<strlen(s);i++)
		if(!(isalpha(s[i]) || isdigit(s[i]))) return 0;
	return 1;
}

//////////////////////////////////////////////////////////////////
void Nhap(int *n, KienHang ds[]){
	int i;
	do{
		printf("\nNhap vao so kien hang (0<n<=100): ");scanf("%d",n);
		if(*n<1 || *n>100) printf("\nBan nhap chua chinh xac. Moi nhap lai!");		
	}while(*n<1 || *n>100);
	
	printf("\nMoi ban nhap thong tin kien hang!");
	for(i=0;i<*n;i++){
		printf("\nNhap thong tin kien hang %d",i+1);
		
		//Nhap ma kien hang cho dung
		do{
			printf("\nMa kien hang: ");fflush(stdin);scanf("%s",ds[i].makh);
			if(!checkString(ds[i].makh))printf("\nNhap ma chua dung. Moi nhap lai!");
		}while(!checkString(ds[i].makh));
		
		//Nhap cac thong tin khac cua kien hang
		printf("\nDai, rong, cao: ");scanf("%d%d%d",&ds[i].l,&ds[i].w,&ds[i].h);
		
		//Nhap trong luong tinh
		printf("\nTrong luong tinh: ");scanf("%lf",&ds[i].tl);
		printf("\nLoai van chuyen (1-nhanh, 0-thuong):");scanf("%d",&ds[i].loaivc);		
	}
}

//////////////////////////////////////////////////////////////////
void InKienHangBiTuChoi(int n, KienHang ds[]){
	int i, tong=0;
	int er1, er2, er3;
	printf("\nChi tiet kien hang bi tu choi\n==================================");
	printf("\n%-20s\t%s","Ma kien","Ly do tu choi");
	for(i=0;i<n;i++){
		er1=0; er2=0; er3=0;
		if(ds[i].l<10 || ds[i].w<10 || ds[i].h<10) er1=1;
		if(ds[i].l>150 || ds[i].w>150 || ds[i].h>150) er2=1;
		if(ds[i].tl>30) er3=1;
		if(er1+er2+er3>0) tong++;
		if(er1){
			printf("\n%-20s\t%s",ds[i].makh,"ER1");continue;
		}
		if(er2){
			printf("\n%-20s\t%s",ds[i].makh,"ER2");continue;
		}
		if(er3){
			printf("\n%-20s\t%s",ds[i].makh,"ER3");continue;
		}
	}
	printf("\nTong so: %d",tong);
}

//////////////////////////////////////////////////////////////////
//Ham tinh trong luong quy doi
double tlQuyDoi(int l, int w, int h, int loaivc){
	if(loaivc==1) return l*w*h/6000.0;
	else return l*w*h/4000.0;
}

//////////////////////////////////////////////////////////////////
//Ham can nang tinh phi
double cannangtinhphi(int l, int w, int h, double tl, int loaivc){
	double cannang = tl;
	if(l+w+h>80) cannang = tlQuyDoi(l,w,h,loaivc);
	if(cannang<tl) cannang=tl;
	return cannang;
}

//////////////////////////////////////////////////////////////////
//Ham tinh cuoc
double tinhCuoc(int l, int w, int h, double tl, int loaivc){
	double cannang = tl;
	double phivanchuyen = 22000;
	if(l+w+h>80) cannang = tlQuyDoi(l,w,h,loaivc);
	if(cannang<tl) cannang=tl;	
	
	if(loaivc==0) phivanchuyen=16500;
	
	if(cannang>3) cannang=cannang-3;
	while(cannang>0){
		phivanchuyen = phivanchuyen + 2500;
		cannang = cannang - 0.5;
	}
	return phivanchuyen;
}

//////////////////////////////////////////////////////////////////
void InChiTietKienHangHopLe(int n, KienHang ds[]){
	int i, tong=0;
	int er1, er2, er3;

	printf("\nChi tiet kien hang hop le\n==================================");
	printf("\n%s        %s     %s       %s","Ma kien","Can nang tinh phi","Hinh thuc van chuyen","Cuoc phi");
	for(i=0;i<n;i++){
		er1=0; er2=0; er3=0;
		if(ds[i].l<10 || ds[i].w<10 || ds[i].h<10) er1=1;
		if(ds[i].l>150 || ds[i].w>150 || ds[i].h>150) er2=1;
		if(ds[i].tl>30) er3=1;
		if(er1+er2+er3 == 0){
			tong++;
			if(ds[i].loaivc==1)
				printf("\n%-20s  \t%-5.2lf   \t%-14s  \t%-10.0lf",ds[i].makh,cannangtinhphi(ds[i].l,ds[i].w,ds[i].h,ds[i].tl,ds[i].loaivc),"Chuyen nhanh",tinhCuoc(ds[i].l,ds[i].w,ds[i].h,ds[i].tl,ds[i].loaivc));
		    else printf("\n%-20s  \t%-5.2lf   \t%-14s  \t%-10.0lf",ds[i].makh,cannangtinhphi(ds[i].l,ds[i].w,ds[i].h,ds[i].tl,ds[i].loaivc),"Chuyen thuong",tinhCuoc(ds[i].l,ds[i].w,ds[i].h,ds[i].tl,ds[i].loaivc));	
		} 
	
	}
	printf("\nTong so: %d",tong);
	
}

///////////////////////////////////////////////////////////////
void TongTienPhaiTra(int n, KienHang ds[]){

	int i, tong=0;
	int er1, er2, er3;
	double tongtiencuoc=0;	
	
	for(i=0;i<n;i++){
		er1=0; er2=0; er3=0;
		if(ds[i].l<10 || ds[i].w<10 || ds[i].h<10) er1=1;
		if(ds[i].l>150 || ds[i].w>150 || ds[i].h>150) er2=1;
		if(ds[i].tl>30) er3=1;
		if(er1+er2+er3 == 0){
			tong++;
			tongtiencuoc = tongtiencuoc + tinhCuoc(ds[i].l,ds[i].w,ds[i].h,ds[i].tl,ds[i].loaivc);
		} 	
	}
	
	printf("\nChi phi van chuyen\n======================");	
	printf("\nSo luong kien da nhan: %d",tong);
	printf("\nTong tien cuoc: %10.0lf",tongtiencuoc);
	printf("\nVAT: %10.0lf",tongtiencuoc*0.08);
	printf("\nTong chi phi: %10.0lf",tongtiencuoc*1.08);	
}


//////////////////////////////////////////////////////////////////
int main(){
	KienHang ds[200];
	int n;
	int choice;	
	
	do{
        printf("\n\nMoi ban lua chon chuc nang\n=====================\n");
        printf("1.Nhap thong tin kien hang\n");
        printf("2.Chi tiet kien hang bi tu choi\n");
        printf("3.Chi tiet cac kien hang hop le\n");
        printf("4.Tinh phi van chuyen\n");
        printf("5.Thoat\n");
        printf("Su lua chon cua ban la: ");scanf("%d", &choice);
        switch(choice){
            case 1:
                Nhap(&n,ds);
                break;
            case 2:
                InKienHangBiTuChoi(n,ds);
                break;
            case 3:
                InChiTietKienHangHopLe(n,ds);
                break;
            case 4:
                TongTienPhaiTra(n,ds);	
                break;
            case 5:
                printf("Ket thuc\n");
                return 0;
            default:
                printf("Nhan 1, 2, 3, 4 de thuc hien cac chuc nang. Nhan 5 de thoat\n");
                break;
        }
    }while(1);
	
	return 0;
}
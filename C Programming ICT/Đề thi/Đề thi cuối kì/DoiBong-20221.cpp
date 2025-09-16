#include<stdio.h>
#include<conio.h>

typedef struct{
	char team[20];
	int point;
	int dif;
}doibong;

doibong a[5],b[5],tg,thang1,thang2,vodich; //hai doi bong
int choice,i,j,n;
int c,d,e,f,g,h; //Sau so the hien ti so tran ban ket va chung ket

void Enter(){
	do{
		printf("Nhap so doi cua 1 bang: ");scanf("%d",&n);
	}while(n<2 || n>5);
	
	printf("\nBang 1\n");
	for(i=0;i<n;i++){
		fflush(stdin);
		scanf("%s%d%d",a[i].team,&a[i].point,&a[i].dif);
	} 
	
	printf("\nBang 2\n");
	for(i=0;i<n;i++){
		fflush(stdin);
		scanf("%s%d%d",b[i].team,&b[i].point,&b[i].dif);
	} 
}

void Print(){
	printf("Bang 1");
	for(i=0;i<n;i++) printf("\n%-5s\t%2d\t%2d",a[i].team,a[i].point,a[i].dif);
	
	printf("\nBang 2");
	for(i=0;i<n;i++) printf("\n%-5s\t%2d\t%2d",b[i].team,b[i].point,b[i].dif);
}

void Sort(){
	//Sap xep bang 1	
	for(i=0;i<n-1;i++)
		for(j=i+1;j<n;j++)
			if(a[i].point<a[j].point){
				tg = a[i];
				a[i] = a[j];
				a[j] = tg;
			}
	//Sap xep bang 2	
	for(i=0;i<n-1;i++)
		for(j=i+1;j<n;j++)
			if(b[i].point<b[j].point){
				tg = b[i];
				b[i] = b[j];
				b[j] = tg;
			}
	printf("\nSap xep moi bang dau theo diem so giam dan\n");
	Print();
}

void Champion(){
	printf("\nNhap vao 6 so cach nhau boi dau cach:\n");
	scanf("%d%d%d%d%d%d",&c,&d,&e,&f,&g,&h);
	printf("\nBK1: %s  %s",a[0].team,b[1].team);
	printf("\nBK2: %s  %s",b[0].team,a[1].team);
	if(c>d) thang1=a[0];
	else thang1=b[1];
	if(e>f) thang2=b[0];
	else thang2=a[1];
	if(g>h) vodich = thang1;
	else vodich=thang2;
	printf("\nCK: %s  %s",thang1.team,thang2.team);
	printf("\nCHAMPION: %s",vodich.team);	
}



int main(){
	
		do{
        printf("\n\n    MENU  \nNhan 1, 2, 3, 4 hoac 5\n");
        printf("1. Nhap thong tin 2 bang\n");
        printf("2. Hien thi 2 bang dau\n");
        printf("3. Sap xep moi bang dau diem so giam dan\n");
        printf("4. Thong tin tran BK, CK va vo dich\n");
        printf("5. Thoat\n-------------------\n");
        printf("Su lua chon cua ban la: ");scanf("%d",&choice);
        switch(choice){
            case 1:
                Enter();break;
            case 2:
                Print();break;
            case 3:
                Sort();break;
            case 4:
                Champion();break;                  
            case 5:
                printf("Ket thuc\n");
                return 0;
            default:
                printf("Ban can nhap 1, 2, 3, 4 hoac 5\n");
                break;
        }
    }while(1);	
	
	return 0;
}
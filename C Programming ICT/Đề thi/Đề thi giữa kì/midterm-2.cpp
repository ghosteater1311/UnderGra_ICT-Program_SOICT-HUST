#include<stdio.h>
#include<conio.h>
#include<time.h>

typedef struct{
	char bks[4];
	int year;
	char brand[20];	
}car;

int n,i,choice;
car xe[100];

void Enter(){
	do{
		printf("Nhap vao so luong xe: "); scanf("%d",&n);		
	}while(n<1||n>100);	
	
	printf("Moi nhap thong tin xe:\n");
	for(i=0;i<n;i++){
		fflush(stdin);     //Lam sach buffer ban phim
		scanf("%s%d%s",xe[i].bks,&xe[i].year,xe[i].brand);		
	}	
}

void Print(){
	printf("\nThong tin cac xe\n");
	for(i=0;i<n;i++){
		printf("%-3s\t%-4d\t%-20s\n",xe[i].bks,xe[i].year,xe[i].brand);	
	}
}

void Count(){
	int curyear, tuoidoi;
	int t24=0, t18=0, t12=0, t6=0;//so luong chung nhan kiem dinh tuong ung so thang
	
	//Lay ra nam hien tai
	time_t rawtime;
    struct tm *info;
    time(&rawtime);
    info = localtime(&rawtime);
	curyear = 1900 + info->tm_year; //Truong tm_year chua nam tinh tu moc 1900
	
	for(i=0;i<n;i++){
		tuoidoi=curyear-xe[i].year;
		if(tuoidoi==0) t24++;
		else if((tuoidoi>=1)&&(tuoidoi<=4)) t18++;
		else if((tuoidoi>4)&&(tuoidoi<=8)) t12++;
		else t6++;		
	}
	
	printf("\nChung nhan kiem dinh theo thoi han:");
	if(t24>0)printf("\n24 months: %d",t24);
	if(t18>0)printf("\n18 months: %d",t18);
	if(t12>0)printf("\n12 months: %d",t12);
	if(t6>0)printf("\n6 months: %d",t6);
}


// Chuong trinh chinh
int main(){	
	
	do{
        printf("\n\n MENU  \n-----------------\nNhan 1, 2, 3 hoac 4\n");
        printf("1. Nhap so luong va thong tin cac xe\n");
        printf("2. Hien thi danh sach xe\n");
        printf("3. Hien thi so luong xe theo chung nhan kiem dinh\n");
        printf("4. Ket thuc\n----------------\n");
        printf("Su lua chon cua ban la: ");scanf("%d", &choice);
        switch(choice){
            case 1:
                Enter();break;
            case 2:
                Print();break;
            case 3:
                Count();break;
            case 4:
                printf("Tam biet! Hen gap lai!\n");return 0;
            default:
                printf("Ban can nhap 1, 2, 3 hoac 4\n");break;
        }
    }while(1);

	return 0;
}


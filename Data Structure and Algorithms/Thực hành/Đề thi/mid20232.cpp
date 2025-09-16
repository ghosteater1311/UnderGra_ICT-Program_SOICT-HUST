// Thông tin của sinh viên gồm các trường sau:
// - Username (Xâu ký tự)
// - Password (Xâu ký tự)
// - Diem (Số thực)
// Yêu cầu về mật khẩu (password): dài ít nhất 6 ký tự và không có dấu cách. Yêu cầu về username: không 
// chứa dấu cách. Xây dựng chương trình quản lý điểm sinh viên yêu cầu Menu gồm 2 chức năng (sau khi 
// thực hiện chức năng 1 sẽ quay lại Menu ban đầu) (1đ):
// - 1. Đăng nhập
// - 2. Thoát
// Khi bắt đầu chọn chức năng 1, chương trình hỏi người sử dụng nhập vào username và password. Kiểm tra 
// thông tin đăng nhập từ file sinhvien.txt (như ở dưới). Trong trường hợp đăng nhập không thành công
// chương trình báo lỗi và yêu cầu nhập lại, nếu quá ba lần nhập sai chương trình sẽ tự động thoát mà không 
// quay lại menu đầu (1đ). Chương trình có 2 loại người dùng là sinh viên và người phụ trách lớp, yêu cầu 
// cụ thể với mỗi loại người dùng như sau:
// Nếu người dùng là sinh viên, khi mật khẩu đúng chương trình in ra thông báo đăng nhập thành công và
// thực hiện menu con gồm 3 chức năng (3.5đ):
// - 1. Xem điểm của sinh viên đó.
// - 2. Thay đổi lại mật khẩu của mình. Chương trình yêu cầu nhập 2 lần mật khẩu mới giống nhau
// mới thay đổi.
// - 3. Ghi lại thông tin lên file và thoát menu con về menu đầu.
// Nếu là người dùng là phụ trách lớp (username = Admin), khi đăng nhập thành công, chương trình thực 
// hiện menu con gồm các chức năng sau (5.5đ): 
// - 1. Thêm một sinh viên vào hệ thống (giả thiết rằng: Admin luôn nhập từ bàn phím đầy đủ thông 
// tin username, password, điểm và username không trùng với những username đã tồn tại).
// - 2. In ra danh sách sinh viên bao gồm username, password và điểm theo thứ tự tăng dần của từ điển
// (chú ý: Không in Admin)
// - 3. Xóa sinh viên: Nhập username cần xóa, tìm kiếm, đưa ra toàn bộ thông tin về sinh viên và xóa 
// sinh viên (Không cho xóa Admin)
// - 4. Ghi lại thông tin lên file và thoát menu con về menu đầu.
// Một số yêu cầu: 
// - Chương trình phải sử dụng danh sách tuyến tính để lưu các thông tin của người dùng. 
// - File lưu thông tin đăng nhập (sinhvien.txt) đơn giản là file văn bản, mỗi dòng văn bản chứa: 
// Username password và điểm (các trường cách nhau dấu tab). Ví dụ:
// Admin Admin12 0
// Linhnv linh123 9
// Phongph phong12 8.5

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LEN 100

typedef struct Student {
    char username[MAX_LEN];
    char password[MAX_LEN];
    float score;
    struct Student* next;
} Student;

typedef enum {
    STUDENT,
    ADMIN,
    UNKNOWN
} UserType;

Student* head = NULL;

void readUserData() {
    FILE *file = fopen("sinhvien.txt", "r");
    if (file == NULL) {
        printf("Error opening file\n");
        exit(1);
    }

    while (!feof(file)) {
        Student* newStudent = (Student*)malloc(sizeof(Student));
        if (!newStudent) {
            printf("Memory allocation failed\n");
            exit(1);
        }

        if (fscanf(file, "%s %s %f", newStudent->username, newStudent->password, &newStudent->score) == 3) {
            newStudent->next = head;
            head = newStudent;
        } else {
            free(newStudent);
        }
    }

    fclose(file);
}

void writeUserData() {
    FILE *file = fopen("sinhvien.txt", "w");
    if (file == NULL) {
        printf("Error opening file\n");
        exit(1);
    }

    Student* cur = head;
    while (cur != NULL) {
        fprintf(file, "%s %s %.2f\n", cur->username, cur->password, cur->score);
        cur = cur->next;
    }

    fclose(file);
}

UserType getUserType(const char *username) {
    if (strcmp(username, "Admin") == 0) {
        return ADMIN;
    } else {
        return STUDENT;
    }
}

int authenticate(const char *username, const char *password) {
    Student* cur = head;
    while (cur != NULL) {
        if (strcmp(username, cur->username) == 0 && strcmp(password, cur->password) == 0) {
            return 1;
        }
        cur = cur->next;
    }
    return 0;
}

void changePassword(const char *username) {
    char newPassword[MAX_LEN];
    printf("Enter new password: ");
    scanf("%s", newPassword);
    Student* cur = head;
    while (cur != NULL) {
        if (strcmp(username, cur->username) == 0) {
            strcpy(cur->password, newPassword);
            printf("Password changed successfully\n");
            return;
        }
        cur = cur->next;
    }
    printf("User not found.\n");
}

void addStudent() {
    Student* newStudent = (Student*)malloc(sizeof(Student));
    if (!newStudent) {
        printf("Memory allocation failed\n");
        return;
    }

    printf("Enter username: ");
    scanf("%s", newStudent->username);

    // Check if username already exists
    Student* current = head;
    while (current != NULL) {
        if (strcmp(newStudent->username, current->username) == 0) {
            printf("Username already exists. Please choose a different username.\n");
            free(newStudent);
            return;
        }
        current = current->next;
    }

    printf("Enter password: ");
    scanf("%s", newStudent->password);
    printf("Enter score: ");
    scanf("%f", &newStudent->score);
    
    // Insert new student
    newStudent->next = head;
    head = newStudent;

    printf("Student added successfully\n");
}


void printStudents() {
    Student* cur = head;
    printf("List of students:\n");
    while (cur != NULL) {
        if (strcmp(cur->username, "Admin") != 0) {
            printf("Username: %s, Password: %s, Score: %.2f\n", cur->username, cur->password, cur->score);
        }
        cur = cur->next;
    }
}


void deleteStudent(const char *username) {
    Student* cur = head;
    Student* prev = NULL;

    while (cur != NULL) {
        if (strcmp(username, cur->username) == 0) {
            if (prev == NULL) {
                head = cur->next;
            } else {
                prev->next = cur->next;
            }
            free(cur);
            printf("Student deleted successfully\n");
            return;
        }
        prev = cur;
        cur = cur->next;
    }

    printf("Student not found.\n");
}

int main(int argc, char const *argv[]){
    readUserData();

    int choice;
    do {
        printf("\nMain Menu:\n");
        printf("1. Login\n");
        printf("2. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1: {
                char username[MAX_LEN];
                char password[MAX_LEN];
                int attempts = 0;
                UserType userType = UNKNOWN;

                do {
                    printf("Enter username: ");
                    scanf("%s", username);
                    printf("Enter password: ");
                    scanf("%s", password);

                    userType = getUserType(username);
                    if (authenticate(username, password)) {
                        printf("Login successful\n");
                        break;
                    } else {
                        attempts++;
                        printf("Incorrect username or password. Please try again\n");
                        if (attempts >= 3) {
                            printf("Too many incorrect attempts. Exiting...\n");
                            exit(0);
                        }
                    }
                } while (1);

                if (userType == STUDENT) {
                    do {
                        printf("\nStudent Menu:\n");
                        printf("1. See your score\n");
                        printf("2. Change your password\n");
                        printf("3. Return to main menu\n");
                        printf("Enter your choice: ");
                        scanf("%d", &choice);

                        switch (choice) {
                            case 1:
                                // Get score for current student
                                {
                                    Student* cur = head;
                                    while (cur != NULL) {
                                        if (strcmp(username, cur->username) == 0) {
                                            printf("Your score: %.2f\n", cur->score);
                                            break;
                                        }
                                        cur = cur->next;
                                    }
                                }
                                break;
                            case 2:
                                changePassword(username);
                                break;
                            case 3:
                                writeUserData();
                                break;
                            default:
                                printf("Invalid choice\n");
                        }
                    } while (choice != 3);
                } else if (userType == ADMIN) {
                    do {
                        printf("\nAdmin Menu:\n");
                        printf("1. Add a student\n");
                        printf("2. Print list of students\n");
                        printf("3. Delete student\n");
                        printf("4. Return to main menu\n");
                        printf("Enter your choice: ");
                        scanf("%d", &choice);

                        switch (choice) {
                            case 1:
                                addStudent();
                                break;
                            case 2:
                                printStudents();
                                break;
                            case 3: {
                                char usernameToDelete[MAX_LEN];
                                printf("Enter username to delete: ");
                                scanf("%s", usernameToDelete);
                                deleteStudent(usernameToDelete);
                                break;
                            }
                            case 4:
                                writeUserData();
                                break;
                            default:
                                printf("Invalid choice\n");
                        }
                    } while (choice != 4);
                }

                break;
            }
            case 2:
                writeUserData();
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice\n");
        }
    } while (choice != 2);

    return 0;
}



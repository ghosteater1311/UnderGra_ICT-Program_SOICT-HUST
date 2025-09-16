public class Student
{
    String id;
    String name;
    int age;

    public Student(String id, String name, int age)
    {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    void intro()
    {
        System.out.println("Hello my name is " + name + ", my student id is " + id + ", my age is " + age);
    }
}


package home.work;

public class Student {
   String name;
   int yearOfBirth;
   String email;

    public Student() {
        name="Typical student";
        yearOfBirth =2000;
        email = "student@mail.ru";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYearOfBirth() {
        return yearOfBirth;
    }

    public void setYearOfBirth(int yearOfBirth) {
        this.yearOfBirth = yearOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
   
   
}

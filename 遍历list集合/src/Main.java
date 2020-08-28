import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

class Student {
    public String name;
    public String classes;
    public double score;

    public Student(String name, String classes, double score) {
        this.name = name;
        this.classes = classes;
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClasses() {
        return classes;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", classes='" + classes + '\'' +
                ", score=" + score +
                '}';
    }
}
public class Main {
    public static void main(String[] args) {
        Student student = new Student("bit","火箭2班",15.9);
        Student student2 = new Student("yezima","火箭2班",89.9);
        List<Student> list = new ArrayList<>();
        list.add(student);
        list.add(student2);
        System.out.println(list);
    }
}

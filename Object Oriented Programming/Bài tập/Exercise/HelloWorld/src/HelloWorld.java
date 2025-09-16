import javax.swing.*;

public class HelloWorld
{
    public static void main(String [] args)
    {
        String name = JOptionPane.showInputDialog("Enter your name: ");
        JOptionPane.showMessageDialog(null, "Welcome to Java, " + name);
    }
}

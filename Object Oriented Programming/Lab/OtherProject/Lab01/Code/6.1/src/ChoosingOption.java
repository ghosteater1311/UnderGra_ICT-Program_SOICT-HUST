import javax.swing.*;

public class ChoosingOption
{
    public static void main(String[] args)
    {
        int option = JOptionPane.showConfirmDialog(null, "Do you want the first class ticket?");
        JOptionPane.showMessageDialog(null, "You have chosen: " + (option == JOptionPane.YES_OPTION ? "Yes" : "No"));
        System.exit(0);
    }
}

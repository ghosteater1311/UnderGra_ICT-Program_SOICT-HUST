import javax.swing.*;

public class Main
{
    public static double Sum(double a, double b)
    {
        return a + b;
    }

    public static double Difference(double a, double b)
    {
        return a - b;
    }

    public static double Product(double a, double b)
    {
        return a * b;
    }

    public static double Quotient(double a, double b)
    {
        return a / b;
    }

    public static void main(String[] args)
    {
        double sum;
        double difference;
        double product;
        double quotient;
        String x;
        String y;

        x = JOptionPane.showInputDialog("Enter X: ");
        y = JOptionPane.showInputDialog("Enter Y: ");

        double X = Double.parseDouble(x);
        double Y = Double.parseDouble(y);

        int choice;
        choice = Integer.parseInt(JOptionPane.showInputDialog("1.Calculate the Sum\n" +
                "2.Calculate the Difference\n" +
                "3.Calculate the Product\n" +
                "4.Calculate the Quotient\n" +
                "5.Exit\n" +
                "Enter Choice: "));
        switch (choice)
        {
            case 1:
                sum = Sum(X, Y);
                JOptionPane.showMessageDialog(null, "The Sum of " + x + " and " + y + " is " + sum);
                break;

            case 2:
                difference = Difference(X, Y);
                JOptionPane.showMessageDialog(null, "The Difference of " + x + " and " + y + " is " + difference);
                break;

            case 3:
                product = Product(X, Y);
                JOptionPane.showMessageDialog(null, "The Product of " + x + " and " + y + " is " + product);
                break;

            case 4:
                quotient = Quotient(X, Y);
                JOptionPane.showMessageDialog(null, "The Quotient of " + x + " and " + y + " is " + quotient);
                break;

            case 5:
                break;

            default:
                JOptionPane.showMessageDialog(null, "Invalid Choice");
        }

    System.exit(0);
    }
}

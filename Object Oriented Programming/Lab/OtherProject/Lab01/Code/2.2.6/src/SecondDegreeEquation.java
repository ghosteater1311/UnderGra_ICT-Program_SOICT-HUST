import javax.swing.*;

/**
 * Second Degree Equation Object|
 * ax^2 + bx + c|
 * Input parameter:
 * double a
 * double b
 * double c|
 * Method:
 * void solve(double a, double b, double c)
 * Print out the solution
 */

public class SecondDegreeEquation
{
    double a, b, c;

    public SecondDegreeEquation(double a, double b, double c)
    {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    void solve(double a, double b, double c)
    {
        double delta = b * b - 4 * a * c;

        if (delta < 0)
        {
            JOptionPane.showMessageDialog(null, "The equation has no solution.");
        }
        else if (delta == 0)
        {
            double x = 0 - (b / 2 * a);
            JOptionPane.showMessageDialog(null, "x1 = x2 = " + x);
        }
        else
        {
            double x1 = (-b + Math.sqrt(delta)) / (2 * a);
            double x2 = (-b - Math.sqrt(delta)) / (2 * a);
            JOptionPane.showMessageDialog(null, "x1 = " + x1 + "\nx2 = " + x2);
        }
    }
}

import javax.swing.*;
/**
 * First Degree Equation with One Variable Object|
 * ax + b = 0|
 * Input Parameter:
 * double a
 * double b|
 * Method:
 * void solve(double a, double b)
 * Print out the solution
 */
public class FirstDegreeEquation
{
    double a;
    double b;

    public FirstDegreeEquation(double a, double b)
    {
        this.a = a;
        this.b = b;
    }

    void solve(double a, double b)
    {
        if (a == 0)
        {
            JOptionPane.showMessageDialog(null, "The equation has no solution.");
        }
        else
        {
            double x = (-b) / a;
            JOptionPane.showMessageDialog(null, "x = " + x);
        }
    }
}

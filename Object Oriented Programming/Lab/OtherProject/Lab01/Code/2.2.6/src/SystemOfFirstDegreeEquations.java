import javax.swing.*;

/**
 * Second Degree Equation Object|
 * a11 * x1 + a12 * x2 = b1 & a21 * x1 + a22 * x2 = b2|
 * Input parameter:
 * double a11, a12, b1
 * double a21, a22, b2
 * Method:
 * void solve(double a11, double a12, double b1, double a21, double a22, double b2)
 * Print out the solution
 */

public class SystemOfFirstDegreeEquations
{
    double a11, a12, b1;
    double a21, a22, b2;

    public SystemOfFirstDegreeEquations(double a11, double a12, double b1, double a21, double a22, double b2)
    {
        this.a11 = a11;
        this.a12 = a12;
        this.b1 = b1;
        this.a21 = a21;
        this.a22 = a22;
        this.b2 = b2;
    }


    void solve(double a11, double a12, double b1, double a21, double a22, double b2)
    {
        double D = a11 * a12 - a21 * a22;
        double D1 = b1 * a22 - b2 * a12;
        double D2 = a11 * b2 - a21 * b1;

        if (D != 0)
        {
            double x1 = D1 / D;
            double x2 = D2 / D;

            JOptionPane.showMessageDialog(null, "x1 = " + x1 + "\nx2 = " + x2);
        }
        else if ((D1 != 0) || (D2 != 0))
        {
            JOptionPane.showMessageDialog(null, "The equation has no solution!");
        }
        else
        {
            JOptionPane.showMessageDialog(null, "The equation has infinity solution!");
        }
    }
}

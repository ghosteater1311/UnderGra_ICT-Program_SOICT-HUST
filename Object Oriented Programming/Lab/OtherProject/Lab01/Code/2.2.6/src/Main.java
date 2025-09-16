import javax.swing.*;

public class Main
{
    public static void main(String[] args)
    {
        int choice = Integer.parseInt(JOptionPane.showInputDialog("1.Solve the first degree equation with one variable\n2.Solve the system of first-degree equations (linear system) with two variables\n3.Solve the second-degree equation with one variable\n4.Exit\nEnter the choice: "));

        switch(choice)
        {
            case 1:
                double firstDegree_a = Double.parseDouble(JOptionPane.showInputDialog("Enter the first parameter (a): "));
                double firstDegree_b = Double.parseDouble(JOptionPane.showInputDialog("Enter the second parameter (b): "));

                FirstDegreeEquation first_degree_equation = new FirstDegreeEquation(firstDegree_a, firstDegree_b);

                first_degree_equation.solve(firstDegree_a, firstDegree_b);
                break;

            case 2:
                double a11 = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (a11): "));
                double a12 = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (a12): "));
                double b1 = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (b1): "));
                double a21 = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (a21): "));
                double a22 = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (a22): "));
                double b2 = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (b2): "));

                SystemOfFirstDegreeEquations system_of_first_degree_equation = new SystemOfFirstDegreeEquations(a11, a12, b1, a21, a22, b2);

                system_of_first_degree_equation.solve(a11, a12, b1, a21, a22, b2);
                break;

            case 3:
                double secondDegree_a = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (a): "));
                double secondDegree_b = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (b): "));
                double secondDegree_c = Double.parseDouble(JOptionPane.showInputDialog("Enter the parameter (c): "));

                SecondDegreeEquation second_degree_equation = new SecondDegreeEquation(secondDegree_a, secondDegree_b, secondDegree_c);

                second_degree_equation.solve(secondDegree_a, secondDegree_b, secondDegree_c);
                break;

            case 4:
                break;

            default:
                JOptionPane.showMessageDialog(null, "Invalid choice");
        }

        System.exit(0);
    }
}
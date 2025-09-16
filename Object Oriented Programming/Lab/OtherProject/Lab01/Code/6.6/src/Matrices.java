import java.util.Scanner;

public class Matrices
{
    public static int[][] readMatrix(Scanner scanner, int rows, int cols)
    {
        int[][] matrix = new int[rows][cols];
        for (int i = 0; i < rows; i++)
        {
            while (true)
            {
                System.out.print("Row " + (i + 1) + ": ");
                String line = scanner.nextLine();
                String[] parts = line.trim().split("\\s+");
                if (parts.length != cols) {
                    System.out.println("Invalid number of elements. Please enter " + cols + " numbers.");
                    continue;
                }
                try
                {
                    for (int j = 0; j < cols; j++)
                    {
                        matrix[i][j] = Integer.parseInt(parts[j]);
                    }
                    break;
                }
                catch (NumberFormatException e) {
                    System.out.println("Invalid number. Please enter integers only.");
                }
            }
        }
        return matrix;
    }

    public static int[][] addMatrices(int[][] a, int[][] b)
    {
        int rows = a.length;
        int cols = a[0].length;
        int[][] sum = new int[rows][cols];
        for (int i = 0; i < rows; i++)
        {
            for (int j = 0; j < cols; j++)
            {
                sum[i][j] = a[i][j] + b[i][j];
            }
        }
        return sum;
    }

    public static void printMatrix(int[][] matrix)
    {
        for (int[] row : matrix)
        {
            for (int elem : row)
            {
                System.out.print(elem + " ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args)
    {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number of rows: ");
        int rows = Integer.parseInt(input.nextLine());
        System.out.print("Enter the number of columns: ");
        int cols = Integer.parseInt(input.nextLine());

        System.out.println("Enter the elements of the first matrix, row by row:");
        int[][] matrix1 = readMatrix(input, rows, cols);

        System.out.println("Enter the elements of the second matrix, row by row:");
        int[][] matrix2 = readMatrix(input, rows, cols);

        int[][] sum = addMatrices(matrix1, matrix2);

        System.out.println("The sum of the two matrices is:");
        printMatrix(sum);
    }
}
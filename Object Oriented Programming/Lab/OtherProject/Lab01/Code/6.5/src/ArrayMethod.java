import java.util.Arrays;
import java.util.Scanner;

public class ArrayMethod
{
    public static void main(String[] args)
    {
        int n;
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the size of array: ");
        n = input.nextInt();

        int[] arr = new int[n];
        System.out.print("Enter the elements of array: ");

        for (int i = 0; i < n; i++)
        {
            arr[i] = input.nextInt();
        }

        int sum = 0;
        double avg = 0;

        for (int i = 0; i < n; i++)
        {
            sum += arr[i];
        }

        avg = sum / n;

        Arrays.sort(arr);

        System.out.println("The sorted array is: " + Arrays.toString(arr));
        System.out.println("The sum of the elements of the array is: " + sum);
        System.out.println("The average of the elements of the array is: " + avg);
    }
}
import java.util.HashMap;
import java.util.Scanner;

public class NumberOfDaysOfAMonth
{
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        HashMap<String, Integer> monthMap = new HashMap<>();
        String[][] monthInputs = {
                {"january", "jan.", "jan", "1"},    // January
                {"february", "feb.", "feb", "2"},   // February
                {"march", "mar.", "mar", "3"},      // March
                {"april", "apr.", "apr", "4"},      // April
                {"may", "may", "may", "5"},         // May
                {"june", "june", "jun", "6"},       // June
                {"july", "july", "jul", "7"},       // July
                {"august", "aug.", "aug", "8"},     // August
                {"september", "sept.", "sep", "9"}, // September
                {"october", "oct.", "oct", "10"},   // October
                {"november", "nov.", "nov", "11"},  // November
                {"december", "dec.", "dec", "12"}   // December
        };

        for (int i = 0; i < monthInputs.length; i++)
        {
            for (String input : monthInputs[i])
            {
                monthMap.put(input, i + 1);
            }
        }

        int[] daysInMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        String monthInput;
        Integer monthNumber;
        do
        {
            System.out.println("Enter the month: ");
            monthInput = scanner.nextLine().toLowerCase();
            monthNumber = monthMap.get(monthInput);
            if (monthNumber == null)
            {
                System.out.println("Invalid month. Please enter again.");
            }
        }
        while (monthNumber == null);

        int year = 0;
        boolean validYear = false;
        do
        {
            System.out.println("Enter the year: ");
            String yearInput = scanner.nextLine();
            try
            {
                year = Integer.parseInt(yearInput);
                if (year >= 0)
                {
                    validYear = true;
                }
                else
                {
                    System.out.println("Year must be non-negative. Please enter again.");
                }
            }
            catch (NumberFormatException e)
            {
                System.out.println("Invalid year. Please enter a non-negative integer.");
            }
        }
        while (!validYear);

        int days;
        if (monthNumber == 2 && isLeapYear(year))
        {
            days = 29;
        }
        else
        {
            days = daysInMonth[monthNumber - 1];
        }

        System.out.println("The number of days in " + monthInput + " of " + year + " is " + days);

        scanner.close();
    }

    public static boolean isLeapYear(int year)
    {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }
}
package hust.soict.globalict.aims;

import hust.soict.globalict.aims.cart.Cart;
import hust.soict.globalict.aims.media.*;
import hust.soict.globalict.aims.store.Store;
import java.util.Scanner;

public class Aims
{
    private static Store store = new Store();
    private static Cart cart = new Cart();
    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args)
    {
        showMainMenu();
    }

    public static void showMainMenu()
    {
        while(true)
        {
            System.out.println("AIMS: ");
            System.out.println("---");
            System.out.println("1. View store");
            System.out.println("2. Update store");
            System.out.println("3. See current cart");
            System.out.println("0. Exit");
            System.out.println("---");
            System.out.print("Please choose a number: 0-1-2-3: ");

            int choice = scanner.nextInt();
            scanner.nextLine();  // Consume newline

            switch(choice)
            {
                case 1:
                    viewStore();
                    break;
                case 2:
                    updateStore();
                    break;
                case 3:
                    seeCurrentCart();
                    break;
                case 0:
                    System.exit(0);
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }

    private static void viewStore()
    {
        System.out.println("***********************STORE***********************");
        System.out.println("Available Items:");
        for (Media media : store.getItemsInStore())
        {
            System.out.println(media);
        }
        System.out.println("***************************************************");
        storeMenu();
    }

    private static void storeMenu()
    {
        while(true)
        {
            System.out.println("Options: ");
            System.out.println("---");
            System.out.println("1. See a media's details");
            System.out.println("2. Add a media to cart");
            System.out.println("3. Play a media");
            System.out.println("4. See current cart");
            System.out.println("0. Back");
            System.out.println("---");
            System.out.print("Please choose a number: 0-1-2-3-4: ");

            int choice = scanner.nextInt();
            scanner.nextLine();

            switch(choice)
            {
                case 1:
                    seeMediaDetails();
                    break;
                case 2:
                    addMediaToCart();
                    break;
                case 3:
                    playMedia();
                    break;
                case 4:
                    cart.print();
                    break;
                case 0:
                    return;
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }

    private static void seeMediaDetails()
    {
        System.out.print("Enter media title: ");
        String title = scanner.nextLine();
        Media media = store.search(title);

        if(media == null)
        {
            System.out.println("Media not found!");
            return;
        }

        System.out.println(media);
        mediaDetailsMenu(media);
    }

    private static void mediaDetailsMenu(Media media)
    {
        while(true) {
            System.out.println("Options: ");
            System.out.println("---");
            System.out.println("1. Add to cart");
            if(media instanceof Playable)
            {
                System.out.println("2. Play");
            }
            System.out.println("0. Back");
            System.out.println("---");
            System.out.print("Please choose a number: 0-1" +
                    (media instanceof Playable ? "-2" : "") + ": ");

            int choice = scanner.nextInt();
            scanner.nextLine();

            switch(choice)
            {
                case 1:
                    cart.addMedia(media);
                    System.out.println("Added to cart. Total items: " + cart.getItemsOrdered().size());
                    break;
                case 2:
                    if(media instanceof Playable)
                    {
                        ((Playable) media).play();
                    }
                    break;
                case 0:
                    return;
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }

    private static void addMediaToCart()
    {
        System.out.print("Enter media title: ");
        String title = scanner.nextLine();
        Media media = store.search(title);

        if(media != null)
        {
            cart.addMedia(media);
            System.out.println("Added to cart. Total items: " + cart.getItemsOrdered().size());
        }
        else
        {
            System.out.println("Media not found!");
        }
    }

    private static void playMedia()
    {
        System.out.print("Enter media title: ");
        String title = scanner.nextLine();
        Media media = store.search(title);

        if(media instanceof Playable)
        {
            ((Playable) media).play();
        }
        else
        {
            System.out.println("This media is not playable!");
        }
    }

    private static void updateStore()
    {
        System.out.println("Options:");
        System.out.println("1. Add media");
        System.out.println("2. Remove media");
        System.out.print("Choose: ");

        int choice = scanner.nextInt();
        scanner.nextLine();

        if (choice == 1)
        {
            System.out.println("Enter media type (BOOK/CD/DVD): ");
            String type = scanner.nextLine().trim().toUpperCase();

            System.out.print("Title: ");
            String title = scanner.nextLine();
            System.out.print("Category: ");
            String category = scanner.nextLine();
            System.out.print("Cost: ");
            float cost = scanner.nextFloat();
            scanner.nextLine();

            Media media = null;
            switch (type)
            {
                case "BOOK":
                    Book book = new Book();
                    book.setTitle(title);
                    book.setCategory(category);
                    book.setCost(cost);
                    System.out.println("Enter authors (comma-separated): ");
                    String[] authors = scanner.nextLine().split(",");
                    for (String author : authors)
                    {
                        book.addAuthor(author.trim());
                    }
                    media = book;
                    break;

                case "CD":
                    CompactDisc cd = new CompactDisc();
                    cd.setTitle(title);
                    cd.setCategory(category);
                    cd.setCost(cost);
                    System.out.print("Artist: ");
                    cd.setArtist(scanner.nextLine());
                    media = cd;
                    break;

                case "DVD":
                    System.out.print("Director: ");
                    String director = scanner.nextLine();
                    System.out.print("Length: ");
                    int length = scanner.nextInt();
                    scanner.nextLine();  // Consume newline
                    media = new DigitalVideoDisc(title, category, director, length, cost);
                    break;

                default:
                    System.out.println("Invalid media type!");
                    return;
            }
            store.addMedia(media);
            System.out.println("Media added successfully!");

        }
        else if (choice == 2)
        {
            System.out.print("Enter media title to remove: ");
            String title = scanner.nextLine();
            Media media = store.search(title);
            if (media != null)
            {
                store.removeMedia(media);
                System.out.println("Media removed!");
            }
            else
            {
                System.out.println("Media not found!");
            }
        }
    }

    private static void seeCurrentCart()
    {
        cart.print();
        cartMenu();
    }

    private static void filterCart()
    {
        System.out.println("Filter by: 1. ID 2. Title");
        int filterChoice = scanner.nextInt();
        scanner.nextLine();

        if (filterChoice == 1)
        {
            System.out.print("Enter ID: ");
            int id = scanner.nextInt();
            scanner.nextLine();
            cart.searchID(id);
        }
        else if (filterChoice == 2)
        {
            System.out.print("Enter title: ");
            String title = scanner.nextLine();
            boolean found = false;
            for (Media media : cart.getItemsOrdered())
            {
                if (media.getTitle().equalsIgnoreCase(title))
                {
                    System.out.println(media);
                    found = true;
                }
            }
            if (!found) System.out.println("No media found with title: " + title);
        }
    }

    private static void sortCart()
    {
        System.out.println("Sort by: 1. Title 2. Cost");
        int sortChoice = scanner.nextInt();
        scanner.nextLine();

        if (sortChoice == 1)
        {
            cart.sortByTitleCost();
            System.out.println("Cart sorted by title!");
        }
        else if (sortChoice == 2)
        {
            cart.sortByCostTitle();
            System.out.println("Cart sorted by cost!");
        }
        cart.print();
    }

    private static void removeFromCart()
    {
        System.out.print("Enter media title: ");
        String title = scanner.nextLine();
        Media toRemove = null;

        for (Media media : cart.getItemsOrdered())
        {
            if (media.getTitle().equalsIgnoreCase(title))
            {
                toRemove = media;
                break;
            }
        }
        if (toRemove != null)
        {
            cart.removeMedia(toRemove);
        }
        else
        {
            System.out.println("Media not found in cart.");
        }
    }

    private static void playFromCart()
    {
        System.out.print("Enter media title: ");
        String title = scanner.nextLine();
        Media media = null;

        for (Media m : cart.getItemsOrdered())
        {
            if (m.getTitle().equalsIgnoreCase(title))
            {
                media = m;
                break;
            }
        }

        if (media instanceof Playable)
        {
            ((Playable) media).play();
        }
        else if (media != null)
        {
            System.out.println("This media type cannot be played.");
        }
        else
        {
            System.out.println("Media not found in cart.");
        }
    }

    private static void placeOrder()
    {
        System.out.println("Order Summary:");
        cart.print();
        System.out.println("Total cost: $" + cart.totalCost());
        cart.getItemsOrdered().clear();
        System.out.println("Order placed successfully! Cart is now empty.");
    }

    private static void cartMenu()
    {
        while(true)
        {
            System.out.println("Options: ");
            System.out.println("---");
            System.out.println("1. Filter media in cart");
            System.out.println("2. Sort media in cart");
            System.out.println("3. Remove media from cart");
            System.out.println("4. Play a media");
            System.out.println("5. Place order");
            System.out.println("0. Back");
            System.out.println("---");
            System.out.print("Please choose a number: 0-1-2-3-4-5: ");

            int choice = scanner.nextInt();
            scanner.nextLine();

            switch(choice)
            {
                case 1:
                    filterCart();
                    break;
                case 2:
                    sortCart();
                    break;
                case 3:
                    removeFromCart();
                    break;
                case 4:
                    playFromCart();
                    break;
                case 5:
                    placeOrder();
                    break;
                case 0:
                    return;
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}
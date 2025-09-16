package hust.soict.globalict.aims.cart;

import hust.soict.globalict.aims.media.Book;
import hust.soict.globalict.aims.media.CompactDisc;
import hust.soict.globalict.aims.media.DigitalVideoDisc;
import hust.soict.globalict.aims.media.Media;
import java.util.ArrayList;
import java.util.Collections;

public class Cart
{
    public static final int MAX_NUMBERS_ORDERED = 20;
    private ArrayList<Media> itemsOrdered = new ArrayList<>();

    public void addMedia(Media media)
    {
        if (itemsOrdered.size() < MAX_NUMBERS_ORDERED)
        {
            itemsOrdered.add(media);
            System.out.println("Added media: " + media.getTitle());
        }
        else
        {
            System.out.println("Cart is full. Cannot add more items.");
        }
    }

    public void removeMedia(Media media)
    {
        if (itemsOrdered.remove(media))
        {
            System.out.println("Removed media: " + media.getTitle());
        }
        else
        {
            System.out.println("Media not found in cart.");
        }
    }

    public float totalCost()
    {
        float total = 0;
        for (Media media : itemsOrdered)
        {
            total += media.getCost();
        }
        return total;
    }

    public void print()
    {
        System.out.println("***********************CART***********************");
        System.out.println("Ordered Items:");
        for (Media media : itemsOrdered)
        {
            System.out.print(media.getId() + ". " + media.getTitle() + " - "
                    + media.getCategory() + " - " + media.getCost() + "$");

            if (media instanceof DigitalVideoDisc)
            {
                DigitalVideoDisc dvd = (DigitalVideoDisc) media;
                System.out.print(" - Director: " + dvd.getDirector()
                        + " - Length: " + dvd.getLength());
            }
            else if (media instanceof CompactDisc)
            {
                CompactDisc cd = (CompactDisc) media;
                System.out.print(" - Artist: " + cd.getArtist()
                        + " - Tracks: " + cd.getTracks().size());
            }
            else if (media instanceof Book)
            {
                Book book = (Book) media;
                System.out.print(" - Authors: " + book.getAuthors().size());
            }
            System.out.println();
        }
        System.out.println("Total cost: " + totalCost() + "$");
        System.out.println("**************************************************");
    }

    public void searchID(int id)
    {
        for (Media media : itemsOrdered)
        {
            if (media.getId() == id)
            {
                System.out.println("Found: " + media.getTitle());
                return;
            }
        }
        System.out.println("No media with ID " + id + " found.");
    }

    public void sortByTitleCost()
    {
        Collections.sort(itemsOrdered, Media.COMPARE_BY_TITLE_COST);
    }

    public void sortByCostTitle()
    {
        Collections.sort(itemsOrdered, Media.COMPARE_BY_COST_TITLE);
    }

    public ArrayList<Media> getItemsOrdered()
    {
        return itemsOrdered;
    }
}
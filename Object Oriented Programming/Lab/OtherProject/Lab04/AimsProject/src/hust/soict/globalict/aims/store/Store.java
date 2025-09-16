package hust.soict.globalict.aims.store;

import hust.soict.globalict.aims.media.Media;
import java.util.ArrayList;

public class Store
{
    private ArrayList<Media> itemsInStore = new ArrayList<>();

    public void addMedia(Media media)
    {
        itemsInStore.add(media);
        System.out.println("Added media to store: " + media.getTitle());
    }

    public void removeMedia(Media media)
    {
        if (itemsInStore.remove(media))
        {
            System.out.println("Removed media from store: " + media.getTitle());
        }
        else
        {
            System.out.println("Media not found in store.");
        }
    }

    public ArrayList<Media> getItemsInStore()
    {
        return itemsInStore;
    }

    public Media search(String title)
    {
        for (Media media : itemsInStore)
        {
            if (media.getTitle().equalsIgnoreCase(title))
            {
                return media;
            }
        }
        return null;
    }
}
package hust.soict.globalict.test.media;

import hust.soict.globalict.aims.media.*;
import java.util.ArrayList;
import java.util.List;

public class TestPolymorphism
{
    public static void main(String[] args)
    {
        Media dvd = new DigitalVideoDisc("Inception", "Sci-Fi", "Christopher Nolan", 148, 19.99f);
        Media cd = new CompactDisc();
        cd.setTitle("Thriller");
        cd.setCost(15.99f);
        Media book = new Book();
        book.setTitle("Java Programming");
        book.setCost(29.99f);

        List<Media> mediaList = new ArrayList<>();
        mediaList.add(dvd);
        mediaList.add(cd);
        mediaList.add(book);

        for (Media media : mediaList)
        {
            System.out.println(media.toString());
        }
    }
}
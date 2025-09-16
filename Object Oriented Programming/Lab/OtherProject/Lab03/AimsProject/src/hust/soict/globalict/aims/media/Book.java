package hust.soict.globalict.aims.media;

import java.util.ArrayList;
import java.util.List;

public class Book extends Media
{
    private List<String> authors = new ArrayList<String>();

    public Book()
    {
        //Auto-generate contruct stub
        super();
    }

    public void addAuthor(String authorName)
    {
        if (!authors.contains(authorName))
        {
            authors.add(authorName);
        }
    }

    public void removeAuthor(String authorName)
    {
        authors.remove(authorName);
    }

    public List<String> getAuthors()
    {
        return authors;
    }

    @Override
    public String toString()
    {
        return "Book - " + getTitle() + " - " + getCategory() + ": " + getCost() + " $";
    }
}

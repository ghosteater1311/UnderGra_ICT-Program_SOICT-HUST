package hust.soict.globalict.aims.media;

public class Track implements Playable
{
    private String title;
    private int length;

    public Track()
    {

    }

    public int getLength()
    {
        return length;
    }

    public void setLength(int length)
    {
        this.length = length;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }

    @Override
    public void play()
    {
        System.out.println("Playing track: " + this.title);
        System.out.println("Track length: " + this.length);
    }

    @Override
    public boolean equals(Object obj)
    {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Track other = (Track) obj;
        return length == other.length && (title == null ? other.title == null : title.equals(other.title));
    }
}

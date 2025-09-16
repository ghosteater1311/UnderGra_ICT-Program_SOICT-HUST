package hust.soict.globalict.aims.media;

public class DigitalVideoDisc extends Disc implements Playable
{
    private static int nbDigitalVideoDiscs = 0;

    public DigitalVideoDisc(String title)
    {
        super();
        setTitle(title);
        nbDigitalVideoDiscs++;
        setId(nbDigitalVideoDiscs);
    }

    public DigitalVideoDisc(String title, String category, float cost)
    {
        super();
        setTitle(title);
        setCategory(category);
        setCost(cost);
        nbDigitalVideoDiscs++;
        setId(nbDigitalVideoDiscs);
    }

    public DigitalVideoDisc(String title, String category, String director, float cost)
    {
        super();
        setTitle(title);
        setCategory(category);
        setDirector(director);
        setCost(cost);
        nbDigitalVideoDiscs++;
        setId(nbDigitalVideoDiscs);
    }

    public DigitalVideoDisc(String title, String category, String director, int length, float cost)
    {
        super();
        setTitle(title);
        setCategory(category);
        setDirector(director);
        setLength(length);
        setCost(cost);
        nbDigitalVideoDiscs++;
        setId(nbDigitalVideoDiscs);
    }

    public boolean isMatch(String title)
    {
        return getTitle().equals(title);
    }

    @Override
    public void play()
    {
        System.out.println("Playing DVD: " + this.getTitle());
        System.out.println("DVD length: " + this.getLength());
    }

    public String toString()
    {
        return "DVD - " + getTitle() +
                " - " + getCategory() +
                " - " + getDirector() +
                " - " + getLength() +
                ": " + getCost() + " $";
    }
}
package hust.soict.globalict.aims.media;

import java.util.ArrayList;

public class CompactDisc extends Disc implements Playable
{
    private String artist;
    private ArrayList<Track> tracks = new ArrayList<>(); // Initialize tracks

    public CompactDisc()
    {
        super();
    }

    public String getArtist()
    {
        return artist;
    }

    public void setArtist(String artist)
    {
        this.artist = artist;
    }

    public ArrayList<Track> getTracks()
    {
        return tracks;
    }

    public void setTracks(ArrayList<Track> tracks)
    {
        this.tracks = tracks;
    }

    public boolean addTrack(Track track)
    {
        if (tracks.contains(track))
        {
            System.out.println("Track '" + track.getTitle() + "' already exists.");
            return false;
        }
        tracks.add(track);
        System.out.println("Track '" + track.getTitle() + "' added successfully.");
        return true;
    }

    public boolean removeTrack(Track track)
    {
        boolean removed = tracks.remove(track);
        if (removed)
        {
            System.out.println("Track '" + track.getTitle() + "' removed successfully.");
        }
        else
        {
            System.out.println("Track '" + track.getTitle() + "' not found.");
        }
        return removed;
    }

    @Override
    public int getLength()
    {
        int totalLength = 0;
        for (Track track : tracks)
        {
            totalLength += track.getLength();
        }
        return totalLength;
    }

    @Override
    public void play()
    {
        System.out.println("Playing CD: " + this.getTitle() + " by " + this.getArtist());
        for (Track track : tracks)
        {
            track.play();
        }
    }

    @Override
    public String toString()
    {
        return "CD - " + getTitle() + " - " + getArtist() + " - Tracks: " + tracks.size() + ": " + getCost() + " $";
    }
}
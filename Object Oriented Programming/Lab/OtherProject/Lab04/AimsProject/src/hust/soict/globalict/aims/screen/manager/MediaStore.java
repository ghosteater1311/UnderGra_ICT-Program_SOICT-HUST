package hust.soict.globalict.aims.screen.manager;

import hust.soict.globalict.aims.media.*;
import javax.swing.*;
import java.awt.*;

public class MediaStore extends JPanel
{
    private Media media;

    public MediaStore(Media media)
    {
        this.media = media;
        setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));

        JLabel title = new JLabel(media.getTitle());
        title.setAlignmentX(CENTER_ALIGNMENT);

        JLabel cost = new JLabel(String.format("%.2f $", media.getCost()));
        cost.setAlignmentX(CENTER_ALIGNMENT);

        JPanel container = new JPanel();
        container.setLayout(new FlowLayout(FlowLayout.CENTER));

        if (media instanceof Playable)
        {
            JButton playButton = new JButton("Play");
            playButton.addActionListener(e -> {
                JDialog dialog = new JDialog();
                dialog.setTitle("Playing " + media.getTitle());
                JTextArea textArea = new JTextArea(getPlayMessage());
                textArea.setEditable(false);
                dialog.add(new JScrollPane(textArea));
                dialog.setSize(300, 200);
                dialog.setLocationRelativeTo(null);
                dialog.setVisible(true);
            });
            container.add(playButton);
        }

        add(Box.createVerticalGlue());
        add(title);
        add(cost);
        add(Box.createVerticalGlue());
        add(container);

        setBorder(BorderFactory.createLineBorder(Color.BLACK));
    }

    private String getPlayMessage()
    {
        if (media instanceof DigitalVideoDisc)
        {
            DigitalVideoDisc dvd = (DigitalVideoDisc)media;
            return String.format("DVD: %s\nDirector: %s\nLength: %d minutes",
                    dvd.getTitle(), dvd.getDirector(), dvd.getLength());
        }
        else if (media instanceof CompactDisc)
        {
            CompactDisc cd = (CompactDisc)media;
            StringBuilder sb = new StringBuilder();
            sb.append("CD: ").append(cd.getTitle()).append("\nArtist: ").append(cd.getArtist()).append("\nTracks:\n");
            for (Track track : cd.getTracks())
            {
                sb.append("- ").append(track.getTitle()).append(" (").append(track.getLength()).append(" mins)\n");
            }
            return sb.toString();
        }

        return "Playing media...";
    }
}

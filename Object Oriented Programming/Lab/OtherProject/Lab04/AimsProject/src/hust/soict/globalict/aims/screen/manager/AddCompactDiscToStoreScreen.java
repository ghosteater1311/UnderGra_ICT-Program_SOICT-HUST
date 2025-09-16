package hust.soict.globalict.aims.screen.manager;

import hust.soict.globalict.aims.media.CompactDisc;
import hust.soict.globalict.aims.media.Track;
import hust.soict.globalict.aims.store.Store;
import javax.swing.*;
import java.awt.*;

public class AddCompactDiscToStoreScreen extends AddItemToStoreScreen
{
    private JTextField titleField, categoryField, costField, artistField, tracksField;

    public AddCompactDiscToStoreScreen(Store store)
    {
        super(store);
        setTitle("Add CD");
        setupUI();
    }

    private void setupUI()
    {
        JPanel panel = new JPanel(new GridLayout(6, 2));

        titleField = new JTextField();
        categoryField = new JTextField();
        costField = new JTextField();
        artistField = new JTextField();
        tracksField = new JTextField();

        panel.add(new JLabel("Title:"));
        panel.add(titleField);
        panel.add(new JLabel("Category:"));
        panel.add(categoryField);
        panel.add(new JLabel("Cost:"));
        panel.add(costField);
        panel.add(new JLabel("Artist:"));
        panel.add(artistField);
        panel.add(new JLabel("Tracks (Title:Length,...):"));
        panel.add(tracksField);

        JButton addButton = new JButton("Add CD");
        addButton.addActionListener(e -> addCD());

        add(panel, BorderLayout.CENTER);
        add(addButton, BorderLayout.SOUTH);
    }

    private void addCD()
    {
        CompactDisc cd = new CompactDisc();
        cd.setTitle(titleField.getText());
        cd.setCategory(categoryField.getText());
        cd.setArtist(artistField.getText());

        try
        {
            cd.setCost(Float.parseFloat(costField.getText()));
        }
        catch (NumberFormatException e)
        {
            JOptionPane.showMessageDialog(this, "Invalid cost");
            return;
        }

        for (String track : tracksField.getText().split(","))
        {
            String[] parts = track.split(":");
            if (parts.length != 2)
            {
                JOptionPane.showMessageDialog(this, "Invalid track format");
                return;
            }

            Track t = new Track();
            t.setTitle(parts[0].trim());

            try
            {
                t.setLength(Integer.parseInt(parts[1].trim()));
            }
            catch (NumberFormatException e)
            {
                JOptionPane.showMessageDialog(this, "Invalid length");
                return;
            }

            cd.addTrack(t);
        }

        store.addMedia(cd);
        JOptionPane.showMessageDialog(this, "CD added successfully");
        new StoreManagerScreen(store).setVisible(true);
        dispose();
    }
}


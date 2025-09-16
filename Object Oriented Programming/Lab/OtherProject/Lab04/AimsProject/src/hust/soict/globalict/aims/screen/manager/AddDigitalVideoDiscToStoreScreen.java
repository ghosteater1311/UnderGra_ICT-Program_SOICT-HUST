package hust.soict.globalict.aims.screen.manager;

import hust.soict.globalict.aims.media.DigitalVideoDisc;
import hust.soict.globalict.aims.store.Store;
import javax.swing.*;
import java.awt.*;

public class AddDigitalVideoDiscToStoreScreen extends AddItemToStoreScreen {
    private JTextField titleField, categoryField, directorField, lengthField, costField;

    public AddDigitalVideoDiscToStoreScreen(Store store) {
        super(store);
        setTitle("Add DVD");
        setupUI();
    }

    private void setupUI() {
        JPanel panel = new JPanel(new GridLayout(6, 2));

        titleField = new JTextField();
        categoryField = new JTextField();
        directorField = new JTextField();
        lengthField = new JTextField();
        costField = new JTextField();

        panel.add(new JLabel("Title:"));
        panel.add(titleField);
        panel.add(new JLabel("Category:"));
        panel.add(categoryField);
        panel.add(new JLabel("Director:"));
        panel.add(directorField);
        panel.add(new JLabel("Length:"));
        panel.add(lengthField);
        panel.add(new JLabel("Cost:"));
        panel.add(costField);

        JButton addButton = new JButton("Add DVD");
        addButton.addActionListener(e -> addDVD());

        add(panel, BorderLayout.CENTER);
        add(addButton, BorderLayout.SOUTH);
    }

    private void addDVD() {
        DigitalVideoDisc dvd;
        try {
            dvd = new DigitalVideoDisc(
                    titleField.getText(),
                    categoryField.getText(),
                    directorField.getText(),
                    Integer.parseInt(lengthField.getText()),
                    Float.parseFloat(costField.getText())
            );
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(this, "Invalid input");
            return;
        }
        store.addMedia(dvd);
        JOptionPane.showMessageDialog(this, "DVD added successfully");
        new StoreManagerScreen(store).setVisible(true);
        dispose();
    }
}

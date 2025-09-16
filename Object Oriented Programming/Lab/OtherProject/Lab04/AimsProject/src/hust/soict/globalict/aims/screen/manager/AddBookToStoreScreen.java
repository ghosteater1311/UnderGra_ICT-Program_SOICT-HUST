package hust.soict.globalict.aims.screen.manager;

import hust.soict.globalict.aims.media.Book;
import hust.soict.globalict.aims.store.Store;
import javax.swing.*;
import java.awt.*;

public class AddBookToStoreScreen extends AddItemToStoreScreen
{
    private JTextField titleField, categoryField, costField, authorsField;

    public AddBookToStoreScreen(Store store)
    {
        super(store);
        setTitle("Add Book");
        setupUI();
    }

    private void setupUI()
    {
        JPanel panel = new JPanel(new GridLayout(5, 2));

        titleField = new JTextField();
        categoryField = new JTextField();
        costField = new JTextField();
        authorsField = new JTextField();

        panel.add(new JLabel("Title:"));
        panel.add(titleField);
        panel.add(new JLabel("Category:"));
        panel.add(categoryField);
        panel.add(new JLabel("Cost:"));
        panel.add(costField);
        panel.add(new JLabel("Authors (comma-separated):"));
        panel.add(authorsField);

        JButton addButton = new JButton("Add Book");
        addButton.addActionListener(e -> addBook());

        add(panel, BorderLayout.CENTER);
        add(addButton, BorderLayout.SOUTH);
    }

    private void addBook()
    {
        Book book = new Book();
        book.setTitle(titleField.getText());
        book.setCategory(categoryField.getText());

        try
        {
            book.setCost(Float.parseFloat(costField.getText()));
        }
        catch (NumberFormatException e)
        {
            JOptionPane.showMessageDialog(this, "Invalid cost");
            return;
        }

        for (String author : authorsField.getText().split(","))
        {
            book.addAuthor(author.trim());
        }

        store.addMedia(book);
        JOptionPane.showMessageDialog(this, "Book added successfully");
        new StoreManagerScreen(store).setVisible(true);
        dispose();
    }
}


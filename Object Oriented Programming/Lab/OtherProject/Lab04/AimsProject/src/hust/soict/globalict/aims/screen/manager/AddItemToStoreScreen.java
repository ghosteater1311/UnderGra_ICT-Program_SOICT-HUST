package hust.soict.globalict.aims.screen.manager;

import hust.soict.globalict.aims.store.Store;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public abstract class AddItemToStoreScreen extends JFrame {
    protected Store store;

    public AddItemToStoreScreen(Store store) {
        this.store = store;
        initializeMenuBar();
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(1024, 768);
        setLocationRelativeTo(null);
    }

    private void initializeMenuBar() {
        JMenuBar menuBar = new JMenuBar();
        JMenu optionsMenu = new JMenu("Options");

        JMenuItem viewStoreItem = new JMenuItem("View Store");
        viewStoreItem.addActionListener(e -> {
            new StoreManagerScreen(store).setVisible(true);
            dispose();
        });

        JMenu updateStoreMenu = new JMenu("Update Store");
        JMenuItem addBook = new JMenuItem("Add Book");
        addBook.addActionListener(e -> navigateToAddScreen(new AddBookToStoreScreen(store)));
        JMenuItem addCD = new JMenuItem("Add CD");
        addCD.addActionListener(e -> navigateToAddScreen(new AddCompactDiscToStoreScreen(store)));
        JMenuItem addDVD = new JMenuItem("Add DVD");
        addDVD.addActionListener(e -> navigateToAddScreen(new AddDigitalVideoDiscToStoreScreen(store)));

        updateStoreMenu.add(addBook);
        updateStoreMenu.add(addCD);
        updateStoreMenu.add(addDVD);

        optionsMenu.add(viewStoreItem);
        optionsMenu.add(updateStoreMenu);
        menuBar.add(optionsMenu);
        setJMenuBar(menuBar);
    }

    private void navigateToAddScreen(JFrame screen) {
        screen.setVisible(true);
        dispose();
    }
}
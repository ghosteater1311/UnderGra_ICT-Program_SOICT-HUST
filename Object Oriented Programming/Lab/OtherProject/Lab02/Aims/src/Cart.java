public class Cart
{
    public static final int MAX_NUMBERS_ORDERED = 20;
    private DigitalVideoDisc itemsOrdered[] = new DigitalVideoDisc[MAX_NUMBERS_ORDERED];
    private int qtyOrdered = 0;

    public void addDigitalVideoDisc(DigitalVideoDisc dvd1,DigitalVideoDisc dvd2)
    {
        if (qtyOrdered < MAX_NUMBERS_ORDERED)
        {
            itemsOrdered[qtyOrdered] = dvd1;
            qtyOrdered++;
            System.out.println("Added first digital video disc!");

            if (qtyOrdered < MAX_NUMBERS_ORDERED)
            {
                itemsOrdered[qtyOrdered] = dvd2;
                qtyOrdered++;
                System.out.println("Added second digital video disc!");
            }
            else
            {
                System.out.println("The cart is full!!!");
            }
        }
        else
        {
            System.out.println("The cart is full!!!");
        }
    }

    public void addDigitalVideoDisc(DigitalVideoDisc[] dvdList)
    {
        if (dvdList == null)
        {
            System.out.println("DVD list is empty!");
            return;
        }

        for (DigitalVideoDisc disc : dvdList)
        {
            if (disc != null && qtyOrdered < MAX_NUMBERS_ORDERED)
            {
                itemsOrdered[qtyOrdered] = disc;
                qtyOrdered++;
                System.out.println("Added a digital video disc!");
            }
            else if (qtyOrdered >= MAX_NUMBERS_ORDERED)
            {
                System.out.println("The cart is full!!!");
                return;
            }
        }
    }

    public void addDigitalVideoDisc(DigitalVideoDisc disc)
    {
        if (qtyOrdered < MAX_NUMBERS_ORDERED)
        {
            itemsOrdered[qtyOrdered] = disc;
            qtyOrdered++;
            System.out.println("Added a digital video disc!");
        }
        else
        {
            System.out.println("The cart is full!!!");
        }
    }

    public void removeDigitalVideoDisc(DigitalVideoDisc disc)
    {
        for (int i = 0; i < qtyOrdered; i++)
        {
            if (itemsOrdered[i] == disc)
            {
                System.out.println("Removed " + itemsOrdered[i].getTitle() + " digital video disc!");
                for (int j = i; j < qtyOrdered - 1; j++)
                {
                    itemsOrdered[j] = itemsOrdered[j + 1];
                }
                itemsOrdered[qtyOrdered - 1] = null;
                qtyOrdered--;
                return;
            }
        }
        System.out.println("The item is not in the cart!!!");
    }

    public float totalCost()
    {
        float total = 0;
        for (int j = 0; j < qtyOrdered; j++)
        {
            total += itemsOrdered[j].getCost();
        }
        return total;
    }
}

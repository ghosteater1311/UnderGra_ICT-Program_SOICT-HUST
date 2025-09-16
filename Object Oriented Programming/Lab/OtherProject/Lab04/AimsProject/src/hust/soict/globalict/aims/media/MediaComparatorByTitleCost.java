package hust.soict.globalict.aims.media;

import java.util.Comparator;

public class MediaComparatorByTitleCost implements Comparator<Media>
{
    @Override
    public int compare(Media m1, Media m2)
    {
        return Comparator.comparing(Media::getTitle, String.CASE_INSENSITIVE_ORDER)
                .thenComparing(Media::getCost, Comparator.reverseOrder())
                .compare(m1, m2);
    }
}
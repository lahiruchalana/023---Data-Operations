import java.util.ArrayList;

public class Test {

    public static void main(String[] args) {

        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(99);
        arrayList.add(56);
        arrayList.add(23);
        arrayList.add(4);
        arrayList.add(200);
        arrayList.add(88);
        arrayList.add(1);
        arrayList.add(45);

        System.out.println(arrayList);

        // find the lowest number in arrayList and highest number in arrayList and swipe both
        int highestIndex = 0;
        int lowestIndex = 0;
        Integer highestValue = arrayList.get(0);
        Integer lowestValue = arrayList.get(0);

        for (int i = 0; i < arrayList.size(); i++) {
            if (highestValue < arrayList.get(i)) {
                highestValue = arrayList.get(i);
                highestIndex = i;
            }

            if (lowestValue > arrayList.get(i)) {
                lowestValue = arrayList.get(i);
                lowestIndex = i;
            }
        }

        arrayList.set(highestIndex, lowestValue);
        arrayList.set(lowestIndex, highestValue);

        System.out.println(highestIndex + " " + highestValue);
        System.out.println(lowestIndex + " " + lowestValue);
        System.out.println(arrayList);

    }
}

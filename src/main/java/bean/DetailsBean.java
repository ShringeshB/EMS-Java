package bean;

import java.util.ArrayList;

public class DetailsBean {
    private static ArrayList<ArrayList<String>> list;

    public static void clearList() { list = new ArrayList<>();}

    public static void setList(ArrayList<String> al)
    {
        list.add(al);
    }

    public static ArrayList<ArrayList<String>> getList()
    {
        return list;
    }
}

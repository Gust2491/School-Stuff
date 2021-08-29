

class Searcher
{
    public static int search(int talListe[], int valgtTal)
    {
        int n = talListe.length;
        for (int i = 0; i < n; i++)
        {
            if (talListe[i] == valgtTal)
                return i;
        }
        return -1;
    }

    public static void main(String args[])
    {
        int talListe[] = { 1,2,3,4,5,6,7,8,9,10 };
        int valgtTal = 7;

        int result = search(talListe, valgtTal);
        if (result == -1)
            System.out.print(
                "Tallet er ikke i array'en");
        else
            System.out.print("Tallet er ved index "
                             + result);
    }
}

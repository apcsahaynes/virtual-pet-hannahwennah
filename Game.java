public class Game {
    private String name;
    private int happiness;
    private int weight;
   
    public Game(String name, int happiness, int weight) {
        this.name = name;
        this.happiness = happiness;
        this.weight = weight;
    }
    
    public boolean isWinner() {
        int temp = (int) (2 * Math.random()); // temp can be 0 or 1
        return temp == 0;
    }
    
    // getters
    public int getHappiness() { return happiness; }
    public String getName() { return name; }
    public int getWeight() { return weight; }
}

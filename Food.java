public class Food {
  private String name;
  private int energy;
  private int happiness; // may be negative
  private int weight;

  public Food(String name, int energy, int happiness, int weight) {
    this.name = name;
    this.energy = energy;
    this.happiness = happiness;
    this.weight = weight;
  }
  
  // getters
  public int getEnergy() { return energy; }
  public int getHappiness() { return happiness; }
  public String getName() { return name; }
  public int getWeight() { return weight; }
}

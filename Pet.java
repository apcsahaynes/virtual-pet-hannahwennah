public class Pet {
  private String name;
  private int ageMonths;
  private int ageYears;
  private int cleanliness;
  private int energy;
  private int happiness;
  private int weight;

  public Pet(String name) {
    this.name = name;
    ageMonths = 0;
    ageYears = 0;
    cleanliness = 10; // cleanliness can't drop under 0;
    energy = 5;
    weight = 5; // weight can't drop under 5
    happiness = 5; // energy & happiness both must be within 0 & 10, inclusive
  }

  public void clean() {
    cleanliness = 10;
    happiness = constrain(happiness - 1, 0, 10);
  }

  public void feed(Food food) {
    cleanliness = constrain(cleanliness - 1, 0, 10);
    energy = constrain(energy + food.getEnergy(), 0, 10);
    happiness = constrain(happiness + food.getHappiness(), 0, 10);
    weight += food.getWeight();
  }

  public boolean play(Game game) {
    boolean won = game.isWinner();
    cleanliness = constrain(cleanliness - 2, 0, 10);
    if (won) {
      happiness = constrain(happiness + game.getHappiness(), 0, 10);
    } else {
      happiness = constrain(happiness - game.getHappiness(), 0, 10);
    }
    weight = constrain(weight - game.getWeight(), 5, 10);
    return won;
  }

  public String toString() {
    return "\n" + name + "'s information\ncleanliness : " + cleanliness + "\nenergy : " + energy + "\nhappiness : " + happiness + "\nweight : " + weight + 
    " grams\nage : " + ageYears + " years & " + ageMonths + " months\n";
  }

  public void update() {
    ageMonths++;
    if (ageMonths == 12) {
      ageMonths = 0;
      ageYears++;
    }
    energy = constrain(energy - 1, 0, 10);
  }

  // getters
  public int getAgeMonths() { return ageMonths; }
  public int getAgeYears() { return ageYears; }
  public int getCleanliness() { return cleanliness; }
  public int getEnergy() { return energy; }
  public int getHappiness() { return happiness; }
  public String getName() { return name; }
  public int getWeight() { return weight; }

  // private helpers
  private int constrain(int value, int min, int max) {
    if (value < min) {
      return min;
    } else if (value > max) {
      return max;
    }
    return value;
  }
}

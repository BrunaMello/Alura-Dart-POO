void main(){
  String name = "Orange";
  double weight = 100.2;
  String color = "Green and Yellow";
  String flavor = "Sweet and Sour";
  int dayFromCollection = 40;
  bool isRipe = funcIsRipe(dayFromCollection);

  // printLoose("Grape", 45, color: "purple");

  int quantosDias = funcQuantosDiasMadura(dayFromCollection);

  // funcRecursive(1, 10);

  Vegetables mandioca1 = Vegetables("Macaxeira", 1500.0, "Brown", true);
  Fruit banana1 = Fruit("Banana", 75, "Yellow", "Sweet", 12);
  OilSeeds macadam = OilSeeds("Macadamia", 2, "Yellowish", "Sweet", 12, 35);
  Citrus lemon = Citrus("Lemon", 155, "Green", "Sour", 5, 9);

  mandioca1.printFood();
  banana1.printFood();
  macadam.printFood();
  lemon.printFood();
  lemon.makeJuice();




}

// Posicionais Obrigatorios (name, int)

// Nomeados Opcionais ({String? color})

// Parametros Padrao ({String? color = "purple"})

// Modificador "required" ({required String? color})

printLoose(String name, int days, {String? color}){
  if(days >= 30){
    print("The $name is loosed.");
  } else {
    print("The $name is not loosed.");
  }

  if(color != null){
    print("$color is the color of the $name.");
  }
}

bool funcIsRipe(int days){
  if (days >= 30){
    return true;
  } else {
    return false;
  }
}

funcQuantosDiasMadura(int days){
  int diasParaMadura = 30;
  int quantosDiasFaltam = days - diasParaMadura;
  return quantosDiasFaltam;
}

funcRecursive(int cont, int stop){
  print("$cont without StackOverflow");
  if(cont >= stop){
    return;
  }
  funcRecursive(cont + 1, stop);
}

class Food{
  String name;
  double weight;
  String color;

  Food(this.name, this.weight, this.color);

  void printFood(){
    print("This $name is $weight weight and its color is $color.");
  }

}

class Vegetables extends Food{
  bool isNeedCooking;

  Vegetables(String name, double weight, String color, this.isNeedCooking)
      : super(name, weight, color);

  void cook(){
    if(isNeedCooking){
      print("$name is cooking");
    } else {
      print("$name do not need to cook");
    }
  }
}

class Fruit extends Food{
  String flavor;
  int dayFromCollection;
  bool? isRipe;

  Fruit(String name, double weight, String color, this.flavor, this.dayFromCollection, {this.isRipe})
      : super(name, weight, color);

  void isItRipe(int daysToRipe){
    isRipe = dayFromCollection >= daysToRipe;
    print("Your $name was collected $dayFromCollection days ago and need $daysToRipe days for be ready for eat.");
  }

  void makeJuice(){

  }

}

class Citrus extends Fruit{
  double citrusLevel;

  Citrus(String name, double weight, String color, String flavour, int daysFromCollected, this.citrusLevel)
      : super(name, weight, color, flavour, daysFromCollected);

  void isThereSoda(bool exists){
    if(exists){
      print("There is $name soda.");
    } else {
      print("There is not $name soda.");
    }
  }
}

class OilSeeds extends Fruit{
  double naturalOilLevel;

  OilSeeds(String name, double weight, String color, String flavour, int daysFromCollected, this.naturalOilLevel)
      : super(name, weight, color, flavour, daysFromCollected);

}






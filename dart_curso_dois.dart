void main(){
  String name = "Orange";
  double weight = 100.2;
  String color = "Green and Yellow";
  String flavor = "Sweet and Sour";
  int dayFromCollection = 40;
  bool isRipe = funcIsRipe(dayFromCollection);

  // printLoose("Grape", 45, color: "purple");

  int quantosDias = funcQuantosDiasMadura(dayFromCollection);
  // print(quantosDias);

  // funcRecursive(1, 10);

  Fruit fruit1 = Fruit(name, weight, color, flavor, dayFromCollection);
  Fruit fruit2 = Fruit("Grape", 100, "Purple", "Sweet", 23);

  print(fruit1.name);
  print(fruit2.name + " " + fruit2.color);

  fruit2.isItRipe(30);
  fruit1.isItRipe(40);

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

class Fruit{
  String name;
  double weight;
  String color;
  String flavor;
  int dayFromCollection;
  bool? isRipe;

  Fruit(this.name, this.weight, this.color, this.flavor, this.dayFromCollection, {this.isRipe});

  isItRipe(int daysToRipe){
    isRipe = dayFromCollection >= daysToRipe;
    print("Your $name was collected $dayFromCollection days ago and need $daysToRipe days for be ready for eat.");
  }

}



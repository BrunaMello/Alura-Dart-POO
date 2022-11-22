void main(){
  String name = "Orange";
  double weight = 100.2;
  String color = "Green and Yellow";
  String flavor = "Sweet and Sour";
  int dayFromCollection = 40;
  bool isLoosed = funcIsLoosed(dayFromCollection);

  printLoose("Grape", 45, color: "purple");

  int quantosDias = funcQuantosDiasMadura(dayFromCollection);
  print(quantosDias);

  funcRecursive(1, 10);

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

bool funcIsLoosed(int days){
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


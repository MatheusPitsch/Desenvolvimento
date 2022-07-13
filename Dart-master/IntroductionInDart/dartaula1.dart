void main() {
//O atalho  para comentar do VSCode é CTRL + ;
// TODO:  serve como se fosse de um alerta.

// Declarando uma lista = Lista<String> alunos = [];

  List<String> alunos = [
    "Matheus",
    "Luan",
    "Você",
  ];

// Sets é uma lista porém não pode ser repetido o valor

  Set<String> meuSet = {
    "Ailton",
    "você",
    "LuanzinhoMilGrau",
    "você", //Aqui está masrcado por que ja existe um você.
  };

//Map

/*Map meuMapSemTipagem = {
"nome":"matheus",
"idade":"20",
"bonito":"concerteza",
};

Map<String,dynamic> meuMapComTipagem = {
"nome":"matheus",
"idade":"20",
"bonito":"concerteza",
};

print(meuMapSemTipagem);
print(meuMapComTipagem);
*/
//Pratica

/*Map <String, dynamic>mapComVetor = {
"sala1" : ["jose","lucas","luan"],
"sala2" : ["LuanzinhoMilGrau","MatheusZinhoM1lGrau"]
};

print(mapComVetor["sala1"]![1]);
*/

  /*List<Set<Map<String,dynamic>>> aleatoria = [
    {
      {"1": "dois"},
      {"3": "tres"}
    },
    {
      {"2": "dois"},
      {"4": "for"}
    }
  ];

  print(aleatoria[0].elementAt(1)["3"]);*/

  void somar(valor1, valor2) {
    print("A soma deu ${valor1 + valor2}");
  }

  void subtracao(valor1, valor2) {
    print("A subtração deu ${valor1 - valor2}");
  }

  Calculadora calculadora = somar;
  calculadora(10, 20);

  Calculadora calculadora1 = subtracao;
  calculadora1(10, 20);

/*
int tipeOne = 0;
double tipeDue = 0.0;

String nome = "Matheus";

bool bonito = true;

List<String> nomes = ["","",""]

Set<int> numbers = {1,2,3,4,5,};

Map<String, dynamic> nomeIdade = {

"Nome"  : "Matheus",
"Idade" : 20,

};
*/

// variavel.trim(); //Tira os espaços do começo e fim.
// variavel.toUpperCase(); //Cola todas as letras em maiusculo
// variavel.toLowerCase(); //Cola todas as letras em minusculo
// variavel.isEmpy(); //Verefica se a variavel está vazia
// variavel.contains(); //Verefica se contem certo argumento em uma variavel
// List<String> variavel = variavel.split("3"); //Percorre a variavel e assim que encontrar pattern divide a variavel em indices
// variavel.replaceAll(); //Serve para trocar uma variavel assim que encontrar a condição
// variavel.replaceFirst(); //Faz a mesma coisa que o de cima porem ele troca somente a primeira condição ja o de cima altera todas as condiçoes
}

typedef Calculadora = Function(double valor1, double valor2);

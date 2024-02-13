import 'dart:io';
void main() {
  // Generacion de una entrada de datos por consola
  stdout.write('Ingrese el primer numero: ');
  int numero1 = int.parse(stdin.readLineSync() ?? '0');
  stdout.write('Ingrese el segundo numero: ');
  int numero2 = int.parse(stdin.readLineSync() ?? '0');
  // Salida de datos por consola
  stdout.write('Ingrese su usuario: ');
  stdout.write('Ingrese su contraseña: ');

  // Tipos de datos
  var valorInferido = 23.4;
  double numeroDouble = 0.45;
  int numeroEntero = 100;
  bool variableBooleano = true;
  List<String> listaCadena = ['manzana', 'pera', 'naranja'];
  Set<int> setEnteros = {1,2,3,4,5,6,7,8,7};
  Iterable<bool> iterableBoleano = [true, false];
  dynamic valorDinamico = 'El valor dinamico siempre puede ser nulo y siempre es de tipo dynamic no se infiere el tipo de valor pero puede tomar el valor de cualquier tipo de valor';
  // Maps
  Map<String,Object> miMapa = {
    'Nombre' : 'Daniel',
    'Email' : 'danqk@outlook.com',
    'Habilidades' : [1,2,3,4,5,6],
    'Habilidades2' : <int>[1,2,3,4,5,6],
    'Habilidades3' : <int, String>{1:'Hola', 2:'Mundo'},
    'Habilidades4' : {'aceptable':true, 'inaceptable':false}
  };



  String nombre = 'Daniel';
  String apellido = 'Quispe Kuno';
  String correo = 'danqk@outlook.com';
  int numeroCelular = 79612430;

  print('La suma de $numero1 y $numero2 es: ${numero1 + numero2}');
  print('''
\tNombre: $nombre
\tApellidos: $apellido
\tCorreo: $correo
\tTelefono: $numeroCelular
''');

  iterableBoleano.forEach((element) {
    print('Elemento del iterable 1: $element');
  });

  print('Tamaño de la lista: ${listaCadena.length}');
  print('First de la lista: ${listaCadena.first}');
  print('Last de la lista: ${listaCadena.last}');
  print('Lista en reversa, retorna iterable (1,2,3,...): ${listaCadena.reversed}');
  print('Lista filtrada con condicion: ${listaCadena.where((element) => element == 'manzana')}');
  iterableBoleano.toList();
  iterableBoleano.toSet();
  iterableBoleano.toString();
  setEnteros.toList();
  setEnteros.toSet();
  setEnteros.toString();
}

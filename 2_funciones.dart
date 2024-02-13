void main(List<String> args) {
  print('La suma de numeros: ${suma(4, 5)}');
  print(saludo('Daniel', 'Danish'));
  print(saludoOpcional(nombre: 'Daniel', apellido: 'Danish'));
}
// Funciones flecha, retorna un valor directamente
int suma(int a, int b) => a + b;
// Parametros posicional opcionales
String saludo(String name, [String lastname = '']) {
  return 'Hola $name $lastname';
}
// Parametros no posicionales opcionales
String saludoOpcional({ required String nombre, String apellido = 'Anonimo' }) => 'Buenas noches $nombre $apellido';
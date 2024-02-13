void main(List<String> args) async{
  print('Iniciando programa...');

  try {
    print(await peticionHttp()); 
  } on Exception catch(err) {
    print('Error controlado: $err');
  } catch (e) {
    print('El error no controlado es: $e');
  } finally {
    print('Operacion que se ejecuta haya o no una excepcion.');
  }

  print('Terminando programa...');
}

Future<String> peticionHttp() async{
  await Future.delayed(const Duration(seconds: 1));
  //throw Exception('Error controlado de la instancia Exception');
  //throw 'Error forzado no controlado...';
  return 'Retornando la peticion...';
}
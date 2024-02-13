void main(List<String> args) {
  print('Iniciando programa...');

  peticionHttp().then((value) {
    print(value);
  }
  //, onError: (err) { print('Error capturado: $err'); }
  )
  .catchError((e) => print('Error recapturado $e'));

  print('Terminando programa...');
}

Future<String> peticionHttp() {
  return Future.delayed(const Duration(seconds: 1), () { 
    //throw 'Error forzado...';
    return 'Regresando respuesta...'; 
  });
}
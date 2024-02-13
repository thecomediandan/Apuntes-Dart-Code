void main(List<String> args) {
  numerosPeriodicos().listen((event) { 
    print('Transmision: $event');
  })
  //.cancel()
  //.pause()
  //.resume()
  ;

  numerosAsincronos().listen((event) {
    print('Transmision async*-await: $event');
  });
}

Stream<int> numerosPeriodicos() {
  return Stream.periodic( const Duration(seconds: 1), (computationCount) {
    return computationCount;
  },)
  .take(5) // Tomamos la cantidad de emisiones para luego cerrarse
  ;
}

// Async* await siempre devuelve un Stream
Stream<int> numerosAsincronos() async*{
  final List<int> lista = [2,3,4,5,6,7,8];
  for (int i in lista) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
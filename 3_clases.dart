void main(List<String> args) {
  Persona p = new Persona(nombre: 'Anie', apellido: 'Danish');
  print(p);
  Map<String, dynamic> json = {
    'Nombre' : 'Daniel',
    'Apellido' : 'Danish',
    'Saldo' : 1500.23
  };
  Persona person = new Persona.fromJson(json);
  print(person);

  Persona person1 = new Persona.conAssert('nombre', 'apellido', -9);
  print(person1._saldo);

  print(TipoDocumento.cedula.name);
  
}

enum TipoDocumento {cedula, nit, nacimiento}
enum ClasePerro { salchicha, siberiano }

abstract class Empleado {
  double sueldo;
  String  cargo;
  TipoDocumento documento;

  Empleado({ required this.sueldo, required this.cargo, this.documento = TipoDocumento.nit});

  void cobrar( double sueldo );


}

//Mixin, usado de manera especifica para ciertas cosas
mixin AccionesPerro {
  void ladrar() => print('Estoy ladrando!');
}

// Implements
class Perro with AccionesPerro implements Empleado {
  @override
  String cargo;

  @override
  TipoDocumento documento;

  @override
  double sueldo;

  String nombre;
  int edad;

  Perro({this.cargo = 'Policia', this.documento = TipoDocumento.nacimiento, this.nombre = 'Dog', this.edad = 1, this.sueldo = 1200});

  @override
  void cobrar(double sueldo) {
    ladrar();
    print('Se cobro: $sueldo');
  }

}

//Herencia
class Persona extends Empleado{
  // Atributos
  String nombre;
  String apellido;
  // Atributo privado
  double _saldo;
  // Constructores
  //Persona(String nombre, String apellido):this.apellido=apellido, this.nombre=nombre;
  Persona({ required this.nombre, required this.apellido, super.cargo = 'Basico', super.sueldo = 1200}) : _saldo = 0;
  //Asserts funciona solo en depuracion
  Persona.conAssert(this.nombre, this.apellido, this._saldo) : assert(_saldo >= 0.0, 'El saldo debe ser mayor o igual a 0'), super(cargo: 'Basico', sueldo: 1200);
  //Constructor por nombre
  Persona.fromJson(Map<String, dynamic> json, {super.cargo = 'Basico', super.sueldo = 1200}): nombre = json['Nombre'], apellido = json['Apellido'], _saldo = json['Saldo'];

  //Getters and Setters
  double get getSaldo {
    return _saldo;
  }

  set setSaldo (double saldo) {
    if(saldo < 0) throw 'El saldo no puede ser negativo';
    this._saldo = saldo;
  }


  @override
  String toString() {
    return '''
    El nombre es: $nombre
    El apellido es: $apellido
    El saldo es: $_saldo
    ''';
  }
  
  @override
  void cobrar(double sueldo) {
    _saldo += sueldo;
    print('Cobrado!');
  }
}
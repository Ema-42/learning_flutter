void main() async {
  print('#####Inicio del main#####');
  try {
    final value = await httpGet('https:google.com');
    print("EXITO: ${value}");
  } on Exception catch (err) {
    print('Tenemos una Exception : ${err}');
  } catch (err) {
    print('Algo sucedio como no deberia haber succedido ${err}');
  } finally {
    print("Fina del try y catch");
  }

  print('#####Fin del Prgrama#####');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el url');
  //throw 'Error en la peticion';
  //return 'tenemos un valor de la peticion';
}

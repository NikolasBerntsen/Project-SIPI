import 'package:sipi/aplicacion/controlador_usuario.dart';
import 'package:sipi/dominio/juego.dart';
import 'package:sipi/dominio/repositorio_juegos.dart';
import 'package:sipi/dominio/usuario.dart';

class ConsultarAPI {
  final String url;

  ConsultarAPI(this.url);

  static List<Juego> todo() {
    JuegoRepository bbdd = JuegoRepository();
    final List<Juego> juegos = bbdd.juegos;

    return juegos;
  }

  static List<Juego> buscar(String nombre) {
    final List<Juego> juegos = todo();

    return juegos
        .where((element) =>
            element.nombreJuego.toLowerCase().contains(nombre.toLowerCase()))
        .toList();
  }

  static List<Juego> buscargenero(String genero) {
    final List<Juego> juegos = todo();

    return juegos
        .where((element) => element.etiquetas.contains(genero))
        .toList();
  }

  static List<Juego> buscarplataforma(String plataforma) {
    final List<Juego> juegos = todo();

    return juegos
        .where((element) => element.plataformas.contains(plataforma))
        .toList();
  }

  static List<Juego> misJuegos() {
    final List<Juego> juegos = todo();
    Usuario? usuario = ControladorUsuario.instance.usuarioAutenticado;

    return juegos
        .where(
            (element) => element.desarrollador.contains(usuario!.nombreUsuario))
        .toList();
  }

  static List<String> categorias() {
    final List<Juego> juegos = todo();
    List<String> categorias = [];
    for (Juego i in juegos) {
      for (String cate in i.etiquetas) {
        if (!categorias.contains(cate)) {
          categorias.add(cate);
        }
      }
    }
    return categorias;
  }

  static List<String> plataformas() {
    final List<Juego> juegos = todo();
    List<String> plataforma = [];
    for (Juego i in juegos) {
      for (String plata in i.plataformas) {
        if (!plataforma.contains(plata)) {
          plataforma.add(plata);
        }
      }
    }
    return plataforma;
  }

  void filtroTag() {
    // Implementación de filtroTag
  }

  void filtroNombre() {
    // Implementación de filtroNombre
  }

  void filtroDev() {
    // Implementación de filtroDev
  }

  void publicacion() {
    // Implementación de publicacion
  }

  static void subirJuego(Map<String, dynamic> data) {
    JuegoRepository bbdd = JuegoRepository();
    Usuario? usuario = ControladorUsuario.instance.usuarioAutenticado;

    Juego jogo = Juego(
      desarrollador: usuario!.nombreUsuario,
      idJuego: bbdd.crearID(),
      descripcion: data["descripcion"],
      puntuacion: 0,
      nombreJuego: data["nombre"],
      etiquetas: data["generos"],
      plataformas: data["plataformas"],
      fechaLanzamiento: data["fechaLanzamiento"],
      requisitos: data["requisitos"],
      imagenURL: data["imagen"],
    );
    bbdd.agregarJuego(jogo);
  }
}

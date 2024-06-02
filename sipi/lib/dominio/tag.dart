class Tag {
  String nombre;

  Tag(this.nombre);

  @override
  String toString() {
    return nombre;
  }
}

class TagManager {
  List<Tag> _tags = [];

  // Método para agregar una nueva etiqueta
  void agregarTag(String nombreTag) {
    Tag newTag = Tag(nombreTag);
    _tags.add(newTag);
    print('Etiqueta agregada: $nombreTag');
  }

  // Método para eliminar una etiqueta por su nombre
  void eliminarTag(String nombreTag) {
    _tags.removeWhere((tag) => tag.nombre == nombreTag);
    print('Etiqueta eliminada: $nombreTag');
  }

  // Método para obtener todas las etiquetas
  List<Tag> obtenerTodasLasTags() {
    return List.unmodifiable(_tags); 
  }

  // Método para encontrar una etiqueta por su nombre
  Tag? encontrarTag(String nombreTag) {
    try {
      return _tags.firstWhere((tag) => tag.nombre == nombreTag);
    } catch (e) {
      print('Etiqueta no encontrada: $nombreTag');
      return null;
    }
  }
}

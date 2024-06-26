import 'package:sipi/dominio/juego.dart';

class JuegoRepository {
  static final JuegoRepository _instance = JuegoRepository._internal();

  factory JuegoRepository() {
    return _instance;
  }

  JuegoRepository._internal();

  List<Juego> _juegos = [
    Juego(
      idJuego: 1,
      descripcion:
          "Una aventura de pixelart inspirada en The Legend of Zelda y Diablo, ofreciendo una experiencia única.",
      puntuacion: 90,
      nombreJuego: "Hyper Light Drifter",
      etiquetas: ["Aventura", "Pixelart", "Acción"],
      desarrollador: "Abylight",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2019-09-06",
      requisitos: "N/A",
      imagenURL:
          "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgscrJ0veOhOzher7LjvfBfmxHLFXDxNSyaMYit-XevxWNewYq3kptiqQ_OxPFBxP7DZ2dygWiXVdM5kZzAP0qgbJtc1NRmZTbEHnGOOs-mApLyXVm98XUlCggdOzFXYoMBQBDNELu_wcLH/s1600/hyper_light_drifter_.png",
    ),
    Juego(
      idJuego: 2,
      descripcion:
          "Juego de acción rápida protagonizado por samuráis, con un estilo de arte pixelado único.",
      puntuacion: 85,
      nombreJuego: "Katana ZERO",
      etiquetas: ["Acción", "Plataformas", "Pixelart"],
      desarrollador: "Devolver Digital / Askiisoft",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2019-04-18",
      requisitos: "N/A",
      imagenURL:
          "https://upload.wikimedia.org/wikipedia/en/d/da/Katana_Zero_cover.png",
    ),
    Juego(
      idJuego: 3,
      descripcion:
          "Aventura narrativa que visualiza los acordes de Steven Wilson con un tono melancólico y exquisito.",
      puntuacion: 88,
      nombreJuego: "Last Day of June",
      etiquetas: ["Narrativo", "Aventura"],
      desarrollador: "505 Games",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-03-16",
      requisitos: "N/A",
      imagenURL:
          "https://image.api.playstation.com/cdn/UP4040/CUSA06148_00/HlhexTLAN0lJ4p5pkp2kCK5B7JT54sFL.png",
    ),
    Juego(
      idJuego: 4,
      descripcion:
          "Un thriller psicológico en el que exploramos la mente de un pintor obsesionado con su obra maestra.",
      puntuacion: 80,
      nombreJuego: "Layers of Fear: Legacy",
      etiquetas: ["Terror", "Aventura"],
      desarrollador: "Bloober Team",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-02-21",
      requisitos: "N/A",
      imagenURL:
          "https://upload.wikimedia.org/wikipedia/en/4/4d/Layers_of_Fear_Cover.png",
    ),
    Juego(
      idJuego: 5,
      descripcion:
          "Una de las aventuras indie más influyentes y fascinantes, modestamente presentada pero con gran impacto.",
      puntuacion: 92,
      nombreJuego: "LIMBO",
      etiquetas: ["Plataformas", "Puzzle"],
      desarrollador: "Playdead",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-06-28",
      requisitos: "N/A",
      imagenURL:
          "https://image.api.playstation.com/cdn/UP2054/CUSA01664_00/OjfS773qw3ho5t9EXnVtdlcxVltVXBRb.png",
    ),
    Juego(
      idJuego: 6,
      descripcion:
          "Una pequeña gran maravilla en la que debemos escapar de un mundo sombrío enfrentando nuestros miedos.",
      puntuacion: 87,
      nombreJuego: "Little Nightmares Complete Edition",
      etiquetas: ["Terror", "Plataformas", "Puzzle"],
      desarrollador: "Bandai Namco",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-05-18",
      requisitos: "N/A",
      imagenURL:
          "https://img.asmedia.epimg.net/resizer/v2/https%3A%2F%2Fstatic.prisa.com%2Fgamepedia%2Fimagenes%2F2020%2F05%2F26%2Fcover%2F835640621590523450.png?auth=b99344466a7a77c61fee8032462a7fef9f2e632daa6627baebf75178a5a2fa20&width=140&height=210&smart=true",
    ),
    Juego(
      idJuego: 7,
      descripcion:
          "Aventura gráfica exquisita protagonizada por un valiente robot en un mundo lleno de puzles.",
      puntuacion: 85,
      nombreJuego: "Machinarium",
      etiquetas: ["Aventura", "Puzzle"],
      desarrollador: "Amanita Design",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-11-01",
      requisitos: "N/A",
      imagenURL:
          "https://upload.wikimedia.org/wikipedia/en/4/4b/Machinarium-cover_art.png",
    ),
    Juego(
      idJuego: 8,
      descripcion:
          "Homenaje a la serie Ghosts 'n Goblins, devolviéndonos a los tiempos de las recreativas.",
      puntuacion: 83,
      nombreJuego: "Maldita Castilla EX",
      etiquetas: ["Acción", "Plataformas", "Clásico"],
      desarrollador: "Abylight / Locomalito",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2017-07-19",
      requisitos: "N/A",
      imagenURL:
          "https://bonusstagemagazine.wordpress.com/wp-content/uploads/2015/01/maldita-castilla-1.png",
    ),
    Juego(
      idJuego: 9,
      descripcion:
          "Controla cada función del cuerpo de Samuel tras hacer un trato con la muerte.",
      puntuacion: 78,
      nombreJuego: "Manual Samuel",
      etiquetas: ["Comedia", "Aventura"],
      desarrollador: "Curve Digital",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-08-16",
      requisitos: "N/A",
      imagenURL:
          "https://scale.coolshop-cdn.com/product-media.coolshop-cdn.com/AM372P/8305ee3b68bf43168e3bcf3e0b9ce408.png/f/manual-samuel.png",
    ),
    Juego(
      idJuego: 10,
      descripcion:
          "Diseñar estaciones de metro es terriblemente entretenido y adictivo en este juego.",
      puntuacion: 90,
      nombreJuego: "Mini Metro",
      etiquetas: ["Estrategia", "Puzzle"],
      desarrollador: "Radial Games",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-08-30",
      requisitos: "N/A",
      imagenURL:
          "https://i0.wp.com/www.archigardener.com/wp-content/uploads/2020/01/minimetro.png?resize=576%2C765&ssl=1",
    ),
    Juego(
      idJuego: 11,
      descripcion:
          "Un juego que combina el encanto de los primeros Zeldas con el concepto del filme Atrapado en el Tiempo.",
      puntuacion: 82,
      nombreJuego: "Minit",
      etiquetas: ["Aventura", "Puzzle"],
      desarrollador: "Devolver Digital",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-08-09",
      requisitos: "N/A",
      imagenURL: "https://pbs.twimg.com/media/FggBSC5XEAUy256.png",
    ),
    Juego(
      idJuego: 12,
      descripcion:
          "Ryuichi Nishizawa retoma el espíritu original del clásico de Master System con una presentación colorida.",
      puntuacion: 85,
      nombreJuego: "Monster Boy and the Cursed Kingdom",
      etiquetas: ["Aventura", "Acción", "Plataformas"],
      desarrollador: "Game Atelier",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-12-04",
      requisitos: "N/A",
      imagenURL:
          "https://m.media-amazon.com/images/M/MV5BZmVkYzQ5YTAtNjY5Mi00YjhjLWJjMGQtYzI5NTQ5M2VhNGYyXkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_FMjpg_UX1000_.jpg",
    ),
    Juego(
      idJuego: 13,
      descripcion:
          "Un RPG que combina aventuras y negocios con un encantador pixelart.",
      puntuacion: 88,
      nombreJuego: "Moonlighter",
      etiquetas: ["RPG", "Aventura", "Pixelart"],
      desarrollador: "Digital Sun",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-11-05",
      requisitos: "N/A",
      imagenURL:
          "https://img.asmedia.epimg.net/resizer/v2/https%3A%2F%2Fstatic.prisa.com%2Fgamepedia%2Fimagenes%2F2018%2F10%2F16%2Fcover%2F143908731539717354.jpg?auth=6d442049b27a7e2e614b72ca19d613d150f5f3a57814e99826a722e2b8edbd3f&width=140&height=210&smart=true",
    ),
    Juego(
      idJuego: 14,
      descripcion:
          "Desata el caos de manera creativa siguiendo las órdenes de un plátano parlanchín.",
      puntuacion: 84,
      nombreJuego: "My Friend Pedro",
      etiquetas: ["Acción", "FPS"],
      desarrollador: "Deadtoast",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2019-06-20",
      requisitos: "N/A",
      imagenURL: "https://byxatab.com/uploads/posts/2019-06/74094775.jpg",
    ),
    Juego(
      idJuego: 15,
      descripcion:
          "Explora el misterio y la crítica social en la historia de Mae, una gata que vuelve a su pueblo natal.",
      puntuacion: 89,
      nombreJuego: "Night in the Woods",
      etiquetas: ["Aventura", "Narrativo"],
      desarrollador: "Finji",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-02-01",
      requisitos: "N/A",
      imagenURL:
          "https://www.giantbomb.com/a/uploads/scale_small/8/87790/2993643-box_nitw.png",
    ),
    Juego(
      idJuego: 16,
      descripcion:
          "Un clásico remasterizado que canaliza el espíritu de la aventura y el descubrimiento.",
      puntuacion: 93,
      nombreJuego: "ŌKAMI HD",
      etiquetas: ["Aventura", "Acción", "Clásico"],
      desarrollador: "Capcom",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-08-09",
      requisitos: "N/A",
      imagenURL:
          "https://image.api.playstation.com/cdn/UP0102/CUSA08418_00/bKaklXPelfDeAe4ODKN25A63ZqOMMlhi.png",
    ),
    Juego(
      idJuego: 17,
      descripcion:
          "Un viaje emocional a través de la música y el tiempo, con una narrativa profunda y una jugabilidad única.",
      puntuacion: 91,
      nombreJuego: "RiME",
      etiquetas: ["Aventura", "Puzzle", "Narrativo"],
      desarrollador: "Tequila Works",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2017-11-14",
      requisitos: "N/A",
      imagenURL:
          "https://i.pinimg.com/736x/3c/34/ac/3c34acd53fdc120f705fc2430f86eac9.jpg",
    ),
    Juego(
      idJuego: 18,
      descripcion:
          "Un juego de exploración y plataformas que ofrece una experiencia nostálgica con un toque moderno.",
      puntuacion: 88,
      nombreJuego: "Shovel Knight: Treasure Trove",
      etiquetas: ["Plataformas", "Aventura"],
      desarrollador: "Yacht Club Games",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2017-03-03",
      requisitos: "N/A",
      imagenURL:
          "https://cdn.mobygames.com/covers/7231011-shovel-knight-treasure-trove-windows-apps-front-cover.jpg",
    ),
    Juego(
      idJuego: 19,
      descripcion:
          "Un homenaje al estilo de los juegos de aventuras clásicos, con un enfoque en la resolución de puzles.",
      puntuacion: 86,
      nombreJuego: "Thimbleweed Park",
      etiquetas: ["Aventura", "Puzzle"],
      desarrollador: "Terrible Toybox",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2017-09-21",
      requisitos: "N/A",
      imagenURL:
          "https://iheartoldgames.wordpress.com/wp-content/uploads/2020/03/thimbleweed-park-cover.jpg",
    ),
    Juego(
      idJuego: 20,
      descripcion:
          "Un RPG que desafía las convenciones y ofrece una narrativa y mecánicas únicas que cambian según las decisiones.",
      puntuacion: 94,
      nombreJuego: "UNDERTALE",
      etiquetas: ["RPG", "Narrativo"],
      desarrollador: "Toby Fox",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-09-18",
      requisitos: "N/A",
      imagenURL:
          "https://images.uncyclomedia.co/inciclopedia/es/a/a5/Undertale.png",
    ),
    Juego(
      idJuego: 27,
      descripcion:
          "Un simulador de supervivencia que explora las consecuencias humanas de la guerra, tomando decisiones difíciles.",
      puntuacion: 88,
      nombreJuego: "This War of Mine: Complete Edition",
      etiquetas: ["Simulación"],
      desarrollador: "11 bit studios",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-11-27",
      requisitos: "N/A",
      imagenURL:
          "https://thumbnails.pcgamingwiki.com/d/d9/This_War_of_Mine_cover.png/300px-This_War_of_Mine_cover.png",
    ),
    Juego(
      idJuego: 28,
      descripcion:
          "Un juego de acción y plataformas basado en la mitología china y la leyenda del Rey Mono.",
      puntuacion: 84,
      nombreJuego: "Unruly Heroes",
      etiquetas: ["Acción", "Plataformas", "Multijugador"],
      desarrollador: "Magic Design Studios",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2019-01-23",
      requisitos: "N/A",
      imagenURL:
          "https://wolfsgamingblog.com/wp-content/uploads/2020/11/834b8-unrulyheroes_keyart_posterart.png",
    ),
    Juego(
      idJuego: 29,
      descripcion:
          "Un juego divertido y caótico donde juegas como un ganso travieso que molesta a los habitantes de un pueblo.",
      puntuacion: 83,
      nombreJuego: "Untitled Goose Game",
      etiquetas: ["Aventura", "Comedia"],
      desarrollador: "House House / Panic",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2019-09-20",
      requisitos: "N/A",
      imagenURL:
          "https://image.api.playstation.com/vulcan/img/rnd/202009/0405/zqpKTik58BHcclOYA7YUnh4S.png",
    ),
    Juego(
      idJuego: 30,
      descripcion:
          "Una aventura mística con un estilo artístico único y desafíos de plataformas basados en la gravedad invertida.",
      puntuacion: 85,
      nombreJuego: "VVVVVV",
      etiquetas: ["Plataformas", "Clásico"],
      desarrollador: "Terry Cavanagh",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-11-17",
      requisitos: "N/A",
      imagenURL: "https://howlongtobeat.com/games/header_292x136.jpg?width=760",
    ),
    Juego(
      idJuego: 31,
      descripcion:
          "Un juego de estrategia por turnos inspirado en clásicos como Advance Wars, con editor de mapas y modo multijugador.",
      puntuacion: 90,
      nombreJuego: "Wargroove",
      etiquetas: ["Estrategia", "Multijugador"],
      desarrollador: "Chucklefish Games",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2019-02-01",
      requisitos: "N/A",
      imagenURL:
          "https://image.api.playstation.com/vulcan/img/cfn/11307hRPmHToQIdEL9Tm1_SccKxHRtT1RjjXeLIzJdFTpx5AN-aEzWAdEifopRNBSu7a4Nr_k5lYnFnf0_9jC4h3gGIW-gIR.png",
    ),
    Juego(
      idJuego: 32,
      descripcion:
          "Una experiencia narrativa que explora temas profundos a través de las historias de diferentes personajes.",
      puntuacion: 89,
      nombreJuego: "What Remains of Edith Finch",
      etiquetas: ["Aventura", "Narrativo"],
      desarrollador: "Giant Sparrow",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2019-07-04",
      requisitos: "N/A",
      imagenURL:
          "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/What_Remains_of_Edith_Finch_cover_art.jpg/220px-What_Remains_of_Edith_Finch_cover_art.jpg",
    ),
    Juego(
      idJuego: 34,
      descripcion:
          "Una reimaginación moderna de un clásico de SEGA, con gráficos y música remasterizados.",
      puntuacion: 85,
      nombreJuego: "Wonder Boy: The Dragon's Trap",
      etiquetas: ["Aventura", "Plataformas", "Clásico"],
      desarrollador: "Lizardcube",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2017-04-18",
      requisitos: "N/A",
      imagenURL:
          "https://image.api.playstation.com/vulcan/ap/rnd/202209/2809/gh3Gv2W9s7c3wUo85iOFikIK.png",
    ),
    Juego(
      idJuego: 37,
      descripcion:
          "Una versión moderna y competitiva del clásico Pong, con una jugabilidad rápida y emocionante.",
      puntuacion: 86,
      nombreJuego: "Windjammers",
      etiquetas: ["Deportes", "Multijugador", "Clásico"],
      desarrollador: "Dotemu",
      plataformas: ["Nintendo Switch"],
      fechaLanzamiento: "2018-10-23",
      requisitos: "N/A",
      imagenURL:
          "https://static.wikia.nocookie.net/dataeast/images/a/a7/Windjammers2-Keyart.jpg/revision/latest/scale-to-width-down/1000?cb=20221008013446",
    ),
    Juego(
      idJuego: 38,
      descripcion:
          "Un juego de acción y plataformas ambientado en un archipiélago voxelado lleno de secretos por descubrir.",
      puntuacion: 86,
      nombreJuego: "The Touryst",
      etiquetas: ["Aventura", "Exploración"],
      desarrollador: "Shin'en Multimedia",
      plataformas: [
        "Nintendo Switch",
        "PC",
        "PS4",
        "PS5",
        "Xbox One",
        "Xbox Series X/S"
      ],
      fechaLanzamiento: "2019-11-21",
      requisitos: "N/A",
      imagenURL:
          "https://assetsio.gnwcdn.com/co2eix.jpg?width=240&quality=80&format=jpg&auto=webp",
    ),
    Juego(
      idJuego: 39,
      descripcion:
          'A first-person shooter where everyone is invisible, and you must rely on your opponents\' screens to win.',
      puntuacion: 4,
      nombreJuego: 'ScreenCheat',
      etiquetas: ['FPS', 'Multiplayer'],
      desarrollador: 'Samurai Punk',
      plataformas: ['PC', 'PS4', 'Xbox One'],
      fechaLanzamiento: 'October 21, 2014',
      requisitos:
          'OS: Windows 7, Processor: 2.0 GHz, Memory: 2 GB RAM, Graphics: DirectX 9 compatible',
      imagenURL:
          'https://images.igdb.com/igdb/image/upload/t_cover_big/fdhebb99wjlrxlwuapwo.jpg',
    ),
    Juego(
      idJuego: 40,
      descripcion:
          'A rhythm-based game where you must hit the right notes to the beat of the music.',
      puntuacion: 3,
      nombreJuego: 'Friday Night Funky',
      etiquetas: ['Musica'],
      desarrollador: 'ninja_muffin99',
      plataformas: ['PC', 'Browser'],
      fechaLanzamiento: 'October 5, 2020',
      requisitos:
          'OS: Windows 7, Processor: 2.5 GHz, Memory: 4 GB RAM, Graphics: OpenGL 2.0 support',
      imagenURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGuDKZVRaL0XzyRnDjfWlnTJS9JC3pHkROYipmVrcjtQ&s',
    ),
    Juego(
      idJuego: 41,
      descripcion:
          'A horror game where you must survive nights at Freddy Fazbear\'s Pizza, avoiding animatronic characters.',
      puntuacion: 5,
      nombreJuego: 'Five Nights at Freddy\'s',
      etiquetas: ["Terror"],
      desarrollador: 'Scott Cawthon',
      plataformas: ['PC', 'Mobile'],
      fechaLanzamiento: 'August 8, 2014',
      requisitos:
          'OS: Windows XP, Processor: 2 GHz Intel Pentium 4 or AMD Athlon, Memory: 1 GB RAM, Graphics: 1 GB',
      imagenURL:
          'https://musicart.xboxlive.com/7/19f76700-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080',
    ),
    Juego(
      idJuego: 42,
      descripcion:
          'A Plataformas about climbing a mountain while facing inner struggles.',
      puntuacion: 2,
      nombreJuego: 'Celeste',
      etiquetas: ['Plataformas'],
      desarrollador: 'Maddy Makes Games',
      plataformas: ['PC', 'PS4', 'Xbox One', 'Switch'],
      fechaLanzamiento: 'January 25, 2018',
      requisitos:
          'OS: Windows 7, Processor: Intel Core i3 M380, Memory: 2 GB RAM, Graphics: Intel HD 4000',
      imagenURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLn4vqfLf2rxH4wp9x-V2rQpzJUVpVM2NdmwMHUB0c-g&s',
    ),
    Juego(
      idJuego: 43,
      descripcion:
          'A wacky Plataformas where you play as a pizza chef battling through bizarre levels.',
      puntuacion: 5,
      nombreJuego: 'Pizza Tower',
      etiquetas: ['Plataformas', 'Comedia'],
      desarrollador: 'Tour De Pizza',
      plataformas: ['PC'],
      fechaLanzamiento: 'January 2024',
      requisitos:
          'OS: Windows 7, Processor: 1.2 GHz, Memory: 512 MB RAM, Graphics: 256 MB',
      imagenURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIsg_GP3iEAKvt2ThjgmV6u4yH5Vb3LB0fHX2Pnukb8Q&s',
    ),
    Juego(
      idJuego: 44,
      descripcion:
          'A quirky game about defending the controversial choice of putting pineapple on pizza.',
      puntuacion: 4,
      nombreJuego: 'Pineapple On Pizza',
      etiquetas: ['Casual', 'Comedia'],
      desarrollador: 'Indie Dev',
      plataformas: ['PC', 'Mobile'],
      fechaLanzamiento: 'June 2023',
      requisitos:
          'OS: Windows 7, Processor: 1.8 GHz, Memory: 2 GB RAM, Graphics: 512 MB',
      imagenURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaexU4jLHzErXwvxWGrGUH1sV37q-zBTCO8b2FMEyzsA&s',
    ),
    Juego(
      idJuego: 45,
      descripcion:
          'A fast-paced multiplayer racing game where you must outrun your friends.',
      puntuacion: 3,
      nombreJuego: 'Speed Runners',
      etiquetas: ['Deportes', 'Multiplayer'],
      desarrollador: 'DoubleDutch Games',
      plataformas: ['PC', 'PS4', 'Xbox One', 'Switch'],
      fechaLanzamiento: 'April 19, 2016',
      requisitos:
          'OS: Windows 7, Processor: 1.7 GHz Dual Core, Memory: 3 GB RAM, Graphics: 512 MB',
      imagenURL:
          'https://store-images.s-microsoft.com/image/apps.50634.66726508910677917.a577adb2-6c73-4149-92ac-c3807d2d15cd.e78c4c54-33e7-47b8-bcc8-fa77e3055f41?q=90&w=177&h=265',
    ),
  ];

  List<Juego> get juegos => _juegos; // Getter para obtener la lista de juegos

  void agregarJuego(Juego juego) {
    _juegos.add(juego);
  }

  int crearID() {
    return _juegos[_juegos.length -1 ].idJuego + 1;
  }
}

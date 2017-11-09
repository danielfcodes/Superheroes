//
//  Superhero.swift
//  SuperHeroes
//
//  Created by Daniel Fernandez on 11/7/17.
//  Copyright © 2017 Ronteq. All rights reserved.
//

import Foundation

enum Universe: String{
  case dc = "DC"
  case marvel = "Marvel"
}

class Superhero{
  
  var name: String
  var imagePath: String
  var strength: Int
  var universe: Universe
  var biography: String
  
  init(name: String, imagePath: String, strength: Int, universe: Universe, biography: String) {
    self.name = name
    self.imagePath = imagePath
    self.strength = strength
    self.universe = universe
    self.biography = biography
  }
  
  static func getSuperheroesData() -> [Superhero]{
    var superheroes: [Superhero] = []
    
    let superhero1 = Superhero(name: "Thor", imagePath: "thor", strength: 8, universe: .marvel, biography: "Thor tuvo una infancia idílica, criado en Asgard como el hijo atesorado de Odín y su esposa Frigga. Su mejor amigo y compañero de juegos era su hermano adoptivo Loki, a pesar de que eran rivales por el trono de su padre, ambos todavía seguían siendo compañeros cercanos. Mientras que a Loki se le enseñó magia por parte de su madre, a Thor se le instruyó para que se convirtiera en un guerrero como su padre.")
    let superhero2 = Superhero(name: "Spiderman", imagePath: "spider", strength: 6, universe: .marvel, biography: "En 1962, en los comienzos de la llamada Edad de Plata de los comic-books, y tras el éxito de Los Cuatro Fantásticos y otros personajes como Hulk, Hombre Hormiga o Iron Man, el director de Marvel Comics solicitó a su guionista principal, Stan Lee, que creara un nuevo superhéroe, que finalmente sería Spider-Man.")
    let superhero3 = Superhero(name: "Incredible Hulk", imagePath: "hulk", strength: 9, universe: .marvel, biography: "Su principal poder es su capacidad de aumentar su fuerza hasta niveles prácticamente ilimitados a la vez que aumenta su furia. Dependiendo de qué personalidad de Hulk esté al mando en ese momento (el Hulk Banner es el más débil, pero lo compensa con su inteligencia). Cuando Hulk se enfada o irrita aumenta su nivel de fuerza y puede alcanzar una altura descomunal (en cierta ocasión soportó todo el peso de una montaña sobre sus hombros, soportó el peso de las placas tectónicas de un planeta de 5 a 10 veces mayor que la tierra, etc). El límite superior de su fuerza se desconoce")
    let superhero4 = Superhero(name: "Deadpool", imagePath: "deadpool", strength: 3, universe: .marvel, biography: "Deadpool normalmente actúa enfundado en un traje de colores rojo y negro y lleva el rostro cubierto para ocultar sus horribles cicatrices. A menudo es catalogado como un mercenario, un villano, héroe o un antihéroe. Se caracteriza porque en sus conversaciones son constantes las referencias a la cultura popular, así como la utilización del sarcasmo y del humor negro. Además, emplea todo tipo de alta tecnología para la ejecución de sus misiones.")
    let superhero5 = Superhero(name: "Dark Knight", imagePath: "batman", strength: 3, universe: .dc, biography: "El multimillonario filántropo, Thomas Wayne, su esposa, Martha junto a su hijo de 8 años, Bruce Wayne, estaban saliendo de un cine una noche cuando se dirigieron hacia Park Row. De repente, un matón llamado Joe Chill armado con una pistola se acercó hacia ellos desde las sombras para robar el collar de perlas que Martha llevaba. Con Bruce viendo todo, Chill disparó y mató a Thomas Wayne a sangre fría cuando este protegió a su esposa y luego Martha también fue asesinada mientras gritaba por ayuda. Bruce quedó severamente traumatizado por la muerte de sus padres. Ya nunca más sería el mismo. Después de ser criado por su sabio y leal mayordomo Alfred Pennyworth, Bruce heredó la gran fortuna de su familia, así también la compañía de su padre, Wayne Enterprises. Una noche, de pie ante las tumbas de sus padres, Bruce les hizo un solemne juramento de vengar sus muertes.")
    let superhero6 = Superhero(name: "Captain America", imagePath: "captainamerica", strength: 5, universe: .marvel, biography: "El Capitán América no tiene una, sino varias biografías, puesto que son muchos los guionistas que han escrito sus aventuras, añadiendo y alterando detalles a su historia mediante la técnica de la continuidad retroactiva.45​ La primera versión del personaje fue desarrollada entre 1941 y 1954, principalmente por Joe Simon, Jack Kirby, Stan Lee y Alan Sulman.46​ La segunda versión, mucho más compleja a causa de las numerosas aportaciones y cambios que se han producido desde la Edad de Plata hasta la actualidad, fue desarrollada a partir de 1964 por numerosos autores, destacando en las aportaciones que Stan Lee, Jack Kirby, Steve Englehart, Roy Thomas y Steve Gerber hicieron en diversos momentos al origen del personaje.47​ Además, puesto que la editorial Marvel suele relanzar sus personajes cada cierto tiempo, su origen e historia pueden variar acorde a los gustos del momento.48​")
    let superhero7 = Superhero(name: "Iron Man", imagePath: "ironman", strength: 7, universe: .marvel, biography: "Mientras observaba los efectos de su tecnología experimental en el esfuerzo bélico estadounidense, Tony Stark es herido por una bomba y capturado por Wong-Chu, quien le ordena diseñar armas. Sin embargo, las lesiones de Stark son graves y la metralla se dirige a su corazón. Su compañero prisionero, Ho Yinsen, un físico ganador del Premio Nobel, cuyo trabajo se había ganado la admiración de Stark en el colegio, construye una placa pectoral magnética para evitar que la metralla alcance el corazón de Stark, manteniéndolo vivo. En secreto, Stark y Yinsen utilizan el taller para diseñar y construir una armadura de poder, la cual utiliza Stark para escapar. Sin embargo, durante el escape, Yinsen sacrifica su vida para salvar a Stark, distrayendo al enemigo para que Tony recargara. Stark se venga de sus secuestradores y escapa para reunirse con las fuerzas estadounidenses, conociendo en su camino a un piloto herido de la marina estadounidense, James Rhodes.")
    let superhero8 = Superhero(name: "Superman", imagePath: "superman", strength: 10, universe: .dc, biography: "Superman (cuyo nombre Kryptoniano es Kal-El y su nombre terrestre es Clark Kent) fue lanzado en un cohete hacia la Tierra desde el planeta condenado Krypton, el infante Kal-El aterrizó cerca del pueblo de Smallville, Kansas, donde fue criado por Jonathan y Martha Kent, la pareja que encontró la nave estrellada. Ellos dotaron a su hijo adoptivo de un fuerte sentido de la compasión que un día beneficiaría al mundo entero.")
    
    superheroes.append(superhero1)
    superheroes.append(superhero2)
    superheroes.append(superhero3)
    superheroes.append(superhero4)
    superheroes.append(superhero5)
    superheroes.append(superhero6)
    superheroes.append(superhero7)
    superheroes.append(superhero8)
    
    return superheroes
  }
  
}

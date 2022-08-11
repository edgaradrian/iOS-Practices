//
//  Restaurant.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import Foundation

struct Restaurant: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var type: String
    var location: String
    var phone: String
    var description: String
    var image: String
    var isVisited: Bool
    
    init(name: String, type: String, location: String, phone: String, description: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.description = description
        self.image = image
        self.isVisited = isVisited
    }//init name
    
    init() {
        self.init(name: "", type: "", location: "", phone: "", description: "", image: "", isVisited: false)
    }//init
    
    
}//Restaurant


var restaurants: [Restaurant] = [
    Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "232-923423", description: "¿Buscas un buen restaurante para desayunar y tomar café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 21:00. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.\n¡Una pequeña joya escondida en la esquina de la calle no es más que fantástica! Este lugar es cálido y acogedor. Abrimos a las 7 todas las mañanas, excepto los domingos, y cerramos a las 9 de la noche. Ofrecemos una variedad de bebidas y especialidades de café, incluyendo lattes, capuchinos, tés y más. Servimos desayunos, almuerzos y cenas en un ambiente abierto. Acérquese, tómese un café y disfrute de una charla con nuestros baristas.\nUna gran cafetería de estilo austriaco. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. También servimos desayunos y comidas ligeras. Venga a disfrutar del elegante ambiente y del café de calidad.", image: "cafedeadend", isVisited: false),
    Restaurant(name: "Homei", type: "Cafe", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", phone: "348-233423", description: "¡Una pequeña joya escondida en la esquina de la calle no es más que fantástica! Este lugar es cálido y acogedor. Abrimos a las 7 todas las mañanas, excepto los domingos, y cerramos a las 9 de la noche. Ofrecemos una variedad de bebidas y especialidades de café, incluyendo lattes, capuchinos, tés y más. Servimos desayunos, almuerzos y cenas en un ambiente abierto. Acércate, tómate un café y disfruta de una charla con nuestros baristas.\n¿Buscas buenos restaurantes para desayunar y tomar café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 21:00. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "homei", isVisited: false),
    Restaurant(name: "Teakha", type: "Tea House", location: "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "354-243523", description: "Tómate un momento para detenerte y oler las hojas de té. Nos preocupamos por la comunidad, el medio ambiente y todas las cosas creadas con el calor de nuestras manos. Abrimos a las 11 de la mañana y cerramos a las 7 de la tarde. En teakha, sólo vendemos los mejores tés de origen único obtenidos por nuestra empresa hermana Plantation directamente de pequeñas plantaciones de té. Los tés se cocinan a la perfección con leche en una olla o se preparan. ¿Busca buenos restaurantes para desayunar y tomar café? Este lugar es para usted. Abrimos a las 6:30 cada mañana y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "teakha", isVisited: false),
    Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "453-333423", description: "Una gran cafetería de estilo austriaco. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. También servimos desayunos y comidas ligeras. Venga a disfrutar de un ambiente elegante y de un café de calidad.\n¿Busca buenos restaurantes para el desayuno y el café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 21:00. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "cafeloisl", isVisited: false),
    Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "983-284334", description: "Un restaurante de lujo que ofrece ostras importadas de primera calidad y de temporada, y una cocina europea moderna, delicada y creativa. Su bar de ostras muestra una amplia gama de ostras frescas importadas de todo el mundo, como Francia, Australia, EE.UU. y Japón. Este lugar es para usted. Abrimos a las 6:30 cada mañana y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "petiteoyster", isVisited: false),
    Restaurant(name: "For Kee Restaurant", type: "Hong Kong", location: "Shop J-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", phone: "232-434222", description: "Una gran cafetería local para desayunar y comer. Situado en una zona tranquila de Sheung Wan, ofrecemos bollos de chuletas de cerdo, tostadas francesas de HK y mucho más. Abrimos desde las 7 de la mañana hasta las 4:30 de la tarde. Este lugar es para usted. Abrimos a las 6:30 cada mañana y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "forkeerestaurant", isVisited: false),
    Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", phone: "234-834322", description: "Una panadería boutique centrada en los panes y pasteles artesanales combinados con la inspiración de Japón y Escandinavia. Nos vuelve locos el pan y nos entusiasma compartir nuestros pasteles artesanales con usted. Abrimos a las 10 de la mañana y cerramos a las 7 de la tarde. Este lugar es para ti. Abrimos a las 6:30 cada mañana, y cerramos a las 9 PM. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "posatelier", isVisited: false),
    Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills", phone: "982-434343", description: "Lo hacemos todo a mano con los mejores ingredientes posibles, desde masas madre orgánicas hasta pasteles y tartas. Una combinación de grandes productos, un buen café fuerte, la habilidad artesanal y el trabajo duro crean los bocados honestos, conmovedores y deliciosos que han hecho famosa a Bourke Street Bakery. Visítenos en uno de nuestros muchos locales de Sídney. ¿Busca buenos restaurantes para desayunar y tomar café? Este lugar es para usted. Abrimos a las 6:30 cada mañana y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "bourkestreetbakery", isVisited: false),
    Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "412-414 George St Sydney New South Wales", phone: "734-232323", description: "Haigh's Chocolates es el fabricante de chocolate familiar más antiguo de Australia. Llevamos fabricando chocolate en Adelaida, Australia del Sur, desde 1915 y estamos comprometidos con el arte de la elaboración de chocolate de primera calidad a partir del grano de cacao. Nuestros chocolates se presentan siempre a la perfección en nuestras propias tiendas. Visite cualquiera de ellas y comprobará que la degustación de chocolate, el envoltorio de regalo y la atención personalizada forman parte del servicio.\n¿Busca buenos restaurantes para desayunar y tomar café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 21:00. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "haighschocolate", isVisited: false),
    Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Shop 1 61 York St Sydney New South Wales", phone: "872-734343", description: "Ofrecemos un surtido de productos horneados y sándwiches en el lugar. Este lugar siempre ha sido un favorito entre los oficinistas. Abrimos a las 7 todas las mañanas, incluidos los domingos, y cerramos a las 16 horas. Acércate, tómate un café y disfruta de una charla con nuestros baristas.\n¿Buscas buenos restaurantes para desayunar y tomar café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 21:00. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "palominoespresso", isVisited: false),
    Restaurant(name: "Upstate", type: "Seafood", location: "95 1st Ave New York, NY 10003", phone: "343-233221", description: "El mejor lugar de mariscos de la ciudad. El ambiente aquí crea una sensación muy hogareña. Abrimos a las 5 PM, y cerramos a las 10:30 PM. ", image: "upstate", isVisited: false),
    Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211", phone: "985-723623", description: "Un público joven puebla este restaurante americano centrado en la carne de cerdo en un barrio antiguo de Williamsburg. Abrimos a las 6PM y cerramos a las 11 PM. Si disfrutas de una experiencia de cena con platos pequeños compartidos, ven a probarlo.\n¿Buscas buenos restaurantes para desayunar y tomar café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 9 PM. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "traif", isVisited: false),
    Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "445 Graham Ave Brooklyn, NY 11211", phone: "455-232345", description: "La clásica charcutería y carnicería italiana atrae a los clientes con sándwiches submarinos rellenos de carne. Utilizamos las carnes y verduras más frescas para crear el panini perfecto para usted. ¿Buscando un buen desayuno y café? Este lugar es para ti. Abrimos a las 6:30 todas las mañanas y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "grahamavenuemeats", isVisited: false),
    Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211", phone: "434-232322", description: "Pequeña tienda, con algunos asientos, ¡sin duda algo diferente! Abrimos a las 7 de la mañana, excepto los domingos, y cerramos a las 9 de la noche. Ofrecemos una variedad de gofres con opciones de rellenos dulces y salados. Si usted es libre de gluten y el antojo de gofres, este es el lugar para ir.\n-Buscando grandes restaurantes de desayuno y el café? Este lugar es para ti. Abrimos a las 6:30 todas las mañanas y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "wafflewolf", isVisited: false),
    Restaurant(name: "Five Leaves", type: "Bistro", location: "18 Bedford Ave Brooklyn, NY 11222", phone: "343-234553", description: "Buena comida, cócteles, ambiente y servicio. No hay nada mejor que una cena caliente y un whisky. Abrimos a las 8 todas las mañanas y cerramos a la 1 de la madrugada. Las tortitas de ricotta son algo que debes probar.\n¿Buscas buenos restaurantes para el desayuno y el café? Este lugar es para ti. Abrimos a las 6:30 todas las mañanas, y cerramos a las 9 PM. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "fiveleaves", isVisited: false),
    Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phone: "342-455433", description: "Un buen lugar, un gran ambiente y una comida increíble. Abrimos a las 10 todas las mañanas, excepto los domingos, y cerramos a las 21 horas. ¡Visítenos! Disfruta de raviolis de setas, raviolis de calabaza, raviolis de carne con salchichas y pimientos, chuletas de cerdo, berenjenas a la parmesana y ensalada.", image: "cafelore", isVisited: false),
    Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003", phone: "643-332323", description: "El cóctel más delicioso que jamás haya probado. Nuestro menú incluye una amplia gama de platos de inspiración internacional de alta calidad, opciones vegetarianas y cocina local. Abrimos a las 10 de la mañana y cerramos a las 10 de la noche. Le damos la bienvenida a nuestro local para que disfrute de una comida con sus amigos.", image: "confessional", isVisited: false),
    Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", phone: "542-343434", description: "Una colección de auténticos bares de tapas españoles en el centro de Londres. Tenemos una cocina abierta, una hermosa barra de mármol donde los clientes pueden sentarse y ver a los chefs en el trabajo y elegantes taburetes de cuero rojo. El almuerzo comienza a la 1 PM. Las cenas comienzan a las 5:30 PM.\n¿Busca un buen desayuno y café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 9 PM. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "barrafina", isVisited: false),
    Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", phone: "722-232323", description: "Muy buena comida vasca, platos creativos con sabores increíbles. Donostia es un restaurante de tapas de alto nivel con un ambiente agradable y relajado. ¿Vienes a disfrutar de unas tapas increíbles? ¿Buscando un buen desayuno y café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "donostia", isVisited: false),
    Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", phone: "343-988834", description: "Especializado en una gran comida de pub. Establecido en 1872, tenemos cervezas locales y mundiales, cerveza artesanal y una selección de vinos y licores para que la gente disfrute. No se olvide de probar nuestra gama de Young's Ales y Fish and Chips.\n¿Busca grandes restaurantes para el desayuno y el café? Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 21:00. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "royaloak", isVisited: false),
    Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", phone: "432-344050", description: "Con cocina que sirve hamburguesas gourmet. Ofrecemos comida todos los días de la semana, de lunes a domingo. Únase a nosotros todos los domingos de 16:30 a 19:30 para escuchar música acústica en directo. Este lugar es para ti. Abrimos a las 6:30 cada mañana y cerramos a las 9 de la noche. Ofrecemos espresso y bebidas a base de espresso, como capuccino, café con leche, piccolo y muchos más. Ven y disfruta de una gran comida.", image: "caskpubkitchen", isVisited: false)
]

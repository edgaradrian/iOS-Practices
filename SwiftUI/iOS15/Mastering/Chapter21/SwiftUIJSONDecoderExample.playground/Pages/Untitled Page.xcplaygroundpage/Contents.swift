import UIKit
import Foundation

let json = """
{
    "nombre": "Bebé Juan",
    "ubicacion": {
    "pais": "Estados Unidos",
    },
    "uso": "Traslado en autobus",
    "cantidad_requerida": 200
}
"""

struct Prestamo: Identifiable {
    var id = UUID()
    var nombre: String
    var pais: String
    var uso: String
    var cantidad: Int

    init(nombre: String, pais: String, uso: String, cantidad: Int) {
        
        self.nombre = nombre
        self.pais = pais
        self.uso = uso
        self.cantidad = cantidad
        
    }//init

}//Prestamo
    
extension Prestamo: Codable {
    
    enum CodingKeys: String, CodingKey {
        case nombre
        case pais = "ubicacion"
        case uso
        case cantidad = "cantidad_requerida"
    }
    
    enum LocationKeys: String, CodingKey {
        case pais
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        nombre = try values.decode(String.self, forKey: .nombre)
        
        let ubicacion = try values.nestedContainer(keyedBy: LocationKeys.self, forKey: .pais)
        pais = try ubicacion.decode(String.self, forKey: .pais)
        
        uso = try values.decode(String.self, forKey: .uso)
        cantidad = try values.decode(Int.self, forKey: .cantidad)
    }//init
    
}//prestamo

let decoder = JSONDecoder()

if let jsonData = json.data(using: .utf8) {
    
    do {
        let prestamo = try decoder.decode(Prestamo.self, from: jsonData)
        print(prestamo)
    } catch {
        print(error)
    }
    
}

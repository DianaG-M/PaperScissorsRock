import UIKit
import GameplayKit


//Se declaran los estados del juego
enum Sign: String {
    case papel,piedra,tijeras
    var descripcion: String {
        switch self {
        case .papel:
            return "✋"
        case .piedra:
            return "👊"
        default:
            return "✌️"
        }
    }
}

var tijeras = Sign.tijeras
print(tijeras.descripcion)


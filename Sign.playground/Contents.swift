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

enum gameState: String {
    case inicio, ganar, perder, empatar
    var descripcion: String {
        switch self {
        case .inicio:
            return "Empezar😎"
        case .ganar:
            return "Ganando como siempre💁‍♀️💅"
        case .perder:
            return "Si por pendeja me cai, por chingona me levanto💪"
        default:
            return "Nadie gano, losers🤦‍♀️🙄"
        }
    }
}

var result = gameState.empatar
print(result.descripcion)


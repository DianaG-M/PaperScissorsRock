import UIKit
import GameplayKit

enum GameState: String {
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
    
    func giveMeEmoji (signComputer: Sign) ->  GameState{

        
        if self == .papel {
            if signComputer == .papel {
                return GameState.empatar
            }
            if signComputer == .piedra{
                return GameState.perder
            }
            if signComputer == .tijeras{
                return GameState.ganar
            }
            
        }
        
       
        return .inicio
        
    }

    
}

var tijeras = Sign.tijeras
print(tijeras.descripcion)



var result = GameState.empatar
print(result.descripcion)




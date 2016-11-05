// Example of the Abstract Factory in Swift
// This is a creational pattern used to share a common interface between different classes

protocol SuperHero {
    
    // factory
    static func make(name: String, power: String) -> (SuperHero)
    
    func resolve(problem: String) -> Bool
}

typealias SuperHeroFactory = (String, String) -> SuperHero

struct MarvelSuperHero: SuperHero {
    
    // factory
    static func make(name: String, power: String) -> SuperHero {
        
        return MarvelSuperHero()
    }
 
    func resolve(problem: String) -> Bool {
        
        return true
    }
}

struct DCSuperHero: SuperHero {
    
    // factory
    static func make(name: String, power: String) -> (SuperHero) {
        
        return DCSuperHero()
    }
    
    func resolve(problem: String) -> Bool {
        
        return false
    }
}

enum SuperHeroType {
    
    case marvel, dc
}

enum SuperHeroHelper {
    
    static func factoryFor(type : SuperHeroType) -> SuperHeroFactory {
        
        switch type {
            
        case .marvel:
            
            return MarvelSuperHero.make
        
        case .dc:
        
            return DCSuperHero.make
        }
    }
}

// Example of use

let superHeroFactoryMarvel = SuperHeroHelper.factoryFor(type: .marvel)
let superHeroMarvel = superHeroFactoryMarvel("Spiderman", "Spider Powers")
superHeroMarvel.resolve(problem: "Disturbs on the street")

let superHeroFactoryDC = SuperHeroHelper.factoryFor(type: .dc)
let superHeroDC = superHeroFactoryDC("Batman", "Bat Powers")
superHeroDC.resolve(problem: "Bank robbery")

//
//  Codevoorbeelden.swift
//  swiftpizza
//
//  Created by Aron Kool on 06-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import Foundation

func optionals(){
    var pizzaKeuze : Pizza?

    if let pizzaKeuze = pizzaKeuze where !pizzaKeuze.toppings.isEmpty{
        
    }
    
    let visPizzas = [Pizza]()
    
    if let firstTopping = visPizzas.first?.toppings.first {
        
    }
}

//    let pizza = Pizza()
//    pizzaKeuze = pizza
//    if let _ = pizzaKeuze{
//        //Er is een keuze gemaakt
//    }
//    let unwrapped = pizzaKeuze!
//    let vispizzas = [Pizza]()
//    if let vispizza = vispizzas.first, firstTopping = vispizza.toppings.first{
//        //De eerste de beste vispizza en daarvan de eerste topping
//    }
//    let topping = Topping()
//    if let topping = topping as? ExtraTopping, extraPrijs = topping.prijs{
//        //bijbetalen
//    }
//    
//    pizzaKeuze?.naam = "Gekozen pizza"
//    let naam = pizzaKeuze?.naam
//    
//    let anderePizza = Pizza()
//    
//    let vleespizzas = [Pizza]()
//    let vegetarischePizzas = [Pizza]()
//    
//    pizzaKeuze = vispizzas.first != nil ? vispizzas.first : anderePizza
//    
//    pizzaKeuze = vispizzas.first ?? anderePizza
//    
//    pizzaKeuze = vispizzas.first ?? vleespizzas.first ?? vegetarischePizzas.first ?? anderePizza
//}

func chaining(){
    let roepnaam : String? = ""
    let voornaam : String? = ""
    let voorletters : String? = ""
    
    let aanduiding = roepnaam ?? voornaam ?? voorletters ?? "Onbekend"
    print(aanduiding)
}

class ParentClass{
    
    init(){
    }
}

class Entiteit{
    
}

class Pizza : Entiteit, Bestelbaar{
    var prijs : Double
    let naam : String?
    
    init(naam : String, prijs : Double){
        self.naam = naam
        self.prijs = prijs
    }

    init(naam : String){
        self.naam = naam
        self.prijs = 0
    }
    
    func bestel(){
        
    }
    
    func naamHoofdletters() -> String?{
        return naam?.capitalizedString
    }
}

class Vis{
    let naam : String
    init(naam : String){
        self.naam = naam
    }
}
class Vlees{
    let naam : String
    init(naam : String){
        self.naam = naam
    }
}
class Groente{
    let naam : String
    init(naam : String){
        self.naam = naam
    }
}

enum PizzaSoort{
    case VisPizza
    case VleesPizza
    case VegetarischePizza
    case Onbekend
}

//func enumExample() -> String{
//    let soort = PizzaSoort.Onbekend
////    let soortNaam = "Vleespizza"
////    if let soort = PizzaSoort(rawValue: soortNaam){
//        switch soort {
//        case .VisPizza(let vis): return vis.naam
//        case .VleesPizza(let vlees): return vlees.naam
//        case .VegetarischePizza(let groente): return groente.naam
//        }
////    }
//    
////    let tonno = Pizza(naam: "Tonno")
////    tonno.soort = .VisPizza(Vis(naam: "Tonijn"))
////    let salmon = Pizza(naam: "Salmon")
////    salmon.soort = .VisPizza(Vis(naam: "Zalm"))
//}

func visMethode(){
}

func vleesMethode(){
}

func vegetarischeMethode(){
}


//func structExamples(){
//    let margarita = Pizza(naam: "Margarita")
//    
//    var standaardPizza = margarita
//    // 1 instantie van Pizza
//    standaardPizza.resetNaam()
//    // 2 instanties van Pizza
//    print(margarita.naam) // Margarita
//    print(standaardPizza.naam) // Standaard Pizza
//}

func listExamples(){
    let pizzas = [Pizza]()
//    let eerste = pizzas.first // optional
//    let tweede = pizzas[1] // niet optional
//    let eersteVijf = pizzas[0..<5]
//    
//    let visPizzas = [Pizza]()
//    let vleesPizzas = [Pizza]()
//    
//    let nietVegetarisch = visPizzas + vleesPizzas
    
//    let visPizzas = [Pizza(naam: "Tonno"), Pizza(naam: "Salmon")]
//    var pizzas = [Pizza]()
//    addVispizzas(pizzas)
//    addVleespizzas(pizzas)
//    addVegetarischePizzas(pizzas)
//    let leeg = pizzas.isEmpty // true
    
    
//    let visPizzas = pizzas.filter { return $0.soort == .VisPizza }
    
    
//    let prijsGesorteerd = pizzas.sort { (pizza1, pizza2) -> Bool in
//        return pizza1.prijs < pizza2.prijs
//    }
    
//    let pizzaNamen = pizzas.map({ return $0.naam })
    
//    let alfabetisch = pizzaNamen.sort(<)
    
    
    for _ in [0...10]{
        //Doe iets
    }
    
}

func mapExamples(){
    var pizzas = [String : Pizza]()
    pizzas["Margherita"] = Pizza(naam: "Margherita")
    for (key, value) in pizzas{
        print(key) // key
        print(value) // value
    }
}
//
//func getBestelling() -> (eten: [Pizza], drinken: [Drank]){
//    let pizzas = [Pizza(naam: "Margherita"), Pizza(naam: "Tonno") ]
//    let dranken = [Drank(naam: "Gifkikker"), Drank(naam: "Cola")]
//    return (eten: pizzas, drinken: dranken)
//}

//func tupleExample(){
//    let bestelling = getBestelling()
//    print(bestelling.eten)
//    print(bestelling.drinken)
//}


func addVispizzas(let pizzas : [Pizza]){
    
}

func addVleespizzas(let pizzas : [Pizza]){
    
}

func addVegetarischePizzas(let pizzas : [Pizza]){
}


func tryExample(){
    let pizza = Pizza(naam: "Tonno")
    do {
        try bestel(pizza)
    } catch {
        
    }
    
    let pizzas = [Pizza]()
    
    let tweeTotEnMetVijf = pizzas[1..<5]
    
//    let pizzas = try? fetchFromServer()
}

func bestel(pizza : Pizza) throws{
    throw NotImplemented() // Implementatie van ErrorType
}

func fetchFromServer() throws -> [Pizza]{
    return []
}

class NotImplemented : ErrorType{
    
}

class SomeClass{
    var pizzaKeuze : Pizza?{
        willSet{
            print("\(pizzaKeuze) wordt veranderd naar \(newValue)")
        }
        didSet{
            print("\(oldValue) werd veranderd naar \(pizzaKeuze)")
            //Update UI?
        }
    }
}

extension Array where Element:Topping{
    
    var asString : String{
        return map({ return $0.naam }).joinWithSeparator(", ")
    }
}

extension Pizza{
    var omschrijving : String{
        return "\(self.naam) met \(self.toppings)"
    }
    
//    func heeftTopping(topping : Topping) -> Bool{
//        return toppings.contains({ return $0.id == topping.id})
//    }
}

extension String{
    func firstCharacterUppercase() -> String{
        let uppercase = self
        //TODO: daadwerkelijke implementatie
        return uppercase
    }
}

//class Fetcher<T:Topping>{
//    
//    func get() -> [T]{
//        return []
//    }
//    
//    func create() -> T{
//        return T()
//    }
//}

func whereExample(){
    let pizza = Pizza()
    switch pizza.naam{
    case let x where x.hasPrefix("Kinder"): bestelKleinePizza()
    case let x where x.hasSuffix("XL"): bestelGrotePizza()
    default: bestelNormalePizza()
    }
}

func bestelKleinePizza(){
    
}

func bestelGrotePizza(){
    
}

func bestelNormalePizza(){
    let vragen : [Vraag]?
}

struct Vraag{
    
}

func combineer<T1:Pizza, T2:Pizza where T1 : Bestelbaar>(pizza1 : T1, pizza2 : T2){
    
}

class PizzaService{
    var url : String?
    var method : String?
}

//private var internalPizzaSerice : PizzaService?
//
//var pizzaService : PizzaService{
//    if let pizzaService = internalPizzaSerice{
//        return pizzaService
//    } else{
//        let service = PizzaService()
//        service.url = "https://localhost/api/"
//        service.method = "GET"
//        internalPizzaSerice = service
//        return service
//    }
//}

class LazyExample{
 
    lazy var pizzaService : PizzaService = {
        let service = PizzaService()
        service.url = "https://localhost/api/"
        service.method = "GET"
        return service
    }()
    
}

//mutating func toggle(topping : Topping){
//    if heeftTopping(topping){
//        toppings = toppings.filter({return $0 != topping })
//    } else{
//        toppings.append(topping)
//    }
//}

func ==(lhs: Topping, rhs: Topping) -> Bool{
    return lhs.id == rhs.id
}

func !=(lhs: Topping, rhs: Topping) -> Bool{
    return lhs.id != rhs.id
}
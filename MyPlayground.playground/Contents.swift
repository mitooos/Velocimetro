
enum Velocidades: Int{
    case Apagado = 0,VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        let actual = velocidad.rawValue
        var cadena = ""
        if(velocidad.rawValue == 0){
            velocidad = Velocidades.VelocidadBaja
            cadena = "Apagado"
        }
        else if(velocidad.rawValue == 20){
            velocidad = Velocidades.VelocidadMedia
            cadena = "Velocidad baja"
        }
        else if(velocidad.rawValue == 50){
            velocidad = Velocidades.VelocidadAlta
            cadena = "Velocidad media"
        }
        else{
            velocidad = Velocidades.VelocidadMedia
            cadena = "Velocidad alta"
        }
        return (actual, cadena)
    }
}

var auto = Auto()

for _ in 0...20{
    let rta = auto.cambioDeVelocidad()
    print(" \(rta.0) , \(rta.1)")
}


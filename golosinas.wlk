//Parte 1

object bombon {
    const property valor = 5
    var property peso = 15
    const property sabor = frutilla
    const property esLibreDeGluten = true

    method recibirMordisco() {
        peso = (peso * 0.8) - 1
    }
}

object alfajor {
    const property valor = 12
    var property peso = 300
    const property sabor = chocolate
    const property esLibreDeGluten = false

    method recibirMordisco() {
        peso = (peso * 0.8)
    }
}

object caramelo {
    const property valor = 1
    var property peso = 5
    const property sabor = frutilla
    const property esLibreDeGluten = true

    method recibirMordisco() {
        peso -= 1
    }
}

object chupetin {
    const property valor = 2
    var property peso = 7
    const property sabor = naranja
    const property esLibreDeGluten = true

    method recibirMordisco() {
        peso = if(peso >= 2) peso * 0.9 else peso 
    }
}

object oblea {
    const property valor = 5
    var property peso = 250
    const property sabor = vainilla
    const property esLibreDeGluten = false

    method recibirMordisco() {
        peso = if(peso > 70) peso * 0.5 else peso * 0.25    
    }
}

object chocolatin {
    const property valor = peso * 0.5
    var property peso = 40
    const property sabor = chocolate
    const property esLibreDeGluten = false

    method recibirMordisco() {
        peso -= 2 
    } 
}

object golosinaBaniada {
    const property golosina = chupetin
    var property mordiscosRecibidos = 0
    const property valor = golosina.valor() + 2
    const property pesoBase = golosina.peso()
    var property peso = golosina.peso() + 4
    const property sabor = golosina.sabor()
    const property esLibreDeGluten = golosina.esLibreDeGluten()

    method recibirMordisco() {
        golosina.recibirMordisco()
        if(mordiscosRecibidos != 1){
            peso -= 2 + (pesoBase - golosina.peso())
            mordiscosRecibidos += 1
        } else {
            peso = golosina.peso()
        }
    }
}

object pastillaTuttiFrutti {
    var property valor = 7
    var property peso = 5
    var property sabor = frutilla
    var property esLibreDeGluten = true

    method libreGluten() {
        esLibreDeGluten = true
        valor = 7
    }
    method noLibreGluten() {
        esLibreDeGluten = false
        valor = 10
    }
    method recibirMordisco() {
        peso -= 1
        sabor = sabor.siguienteSabor()
    }
}

object frutilla {method siguienteSabor() = chocolate}

object chocolate {method siguienteSabor() = naranja}

object naranja {method siguienteSabor() = frutilla}

object vainilla {
    var property okf = perro
}

object perro{}
object gato{}
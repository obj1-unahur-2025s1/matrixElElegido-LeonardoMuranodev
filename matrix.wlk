object nave {
    const pasajeros = []

    //Consultas
    method cantPasajeros() = pasajeros.size()
    method estaElElegido() = pasajeros.any({p => p.esElElejido()})
    method mayorVitalidad(){
        return pasajeros.max({pasajero => pasajero.vitalidad()})
    } 

    method menorVitalidad(){
        return pasajeros.min({pasajero => pasajero.vitalidad()})
    }

    method estaEquilibrada(){
        return self.mayorVitalidad().vitalidad() < self.menorVitalidad().vitalidad()* 2
    }

    method noElejidos() {
      return pasajeros.filter({p => !p.esElElejido()})
    }

    //Indicaciones
    method chocar() {
        pasajeros.forEach({p => p.salta()})
        pasajeros.clear()
    }

    method acelerar(){
        self.noElejidos().forEach({p => p.salta()})
    }
}


//Pasajeros
object neo {
    var energia = 100

    //Consultas
    method vitalidad() = energia * 0.1
    method esElElejido() = true
    method energia() = energia

    //Indicaciones
    method salta(){
        energia = energia * 0.5
    }
}

object morfeo {
    var vitalidad = 8
    var estaCansado = false 

    //Consultas
    method vitalidad() = vitalidad
    method esElElejido() = false

    //Indicaciones
    method salta(){
        vitalidad = 0.max(vitalidad - 1)
        estaCansado = !estaCansado
    }
}

object trinity {

    //Consultas
    method vitalidad() = 0
    method esElElejido() = false

    //Indicaciones
    //Este es un metodo que no hace nada, un metodo asi: method salta() es un metodo abstrato
    method salta(){}
}
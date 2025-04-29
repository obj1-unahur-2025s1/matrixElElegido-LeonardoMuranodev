object nave {
    const pasajeros = []

    //Consultas
    method cantPasajeros() = pasajeros.size()

    //Indicaciones
    method agregar(unPasajero){
        pasajeros.add(unPasajero)
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
    method salta(){}
}
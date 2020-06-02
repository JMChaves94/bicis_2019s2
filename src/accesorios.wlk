object farolito {

    var property esLuminoso = true 

    method peso(){return 0.5}

    method carga(){return 0}

}

class Canasto {

    var property esLuminoso = false

    var property volumen = 0

    method peso(){return volumen / 10}

    method carga(){return volumen * 2}


}

class MorralDeBici {

    var esLuminoso = true

    var ojoDeGato = true

    var property largo = 0

    method setOjoDeGato(){
        
        ojoDeGato = not ojoDeGato
        esLuminoso = not esLuminoso
    }
    
    method esLuminoso(){return esLuminoso}

    method ojoDeGato(){return ojoDeGato}

    method peso(){return 1.2}

    method carga(){return largo / 3}
}
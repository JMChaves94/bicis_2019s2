class Bicicleta {

    var property rodado = 0
    var property largo = 0
    var property marca
    const accesorio = []

    method altura() {return rodado * 2.5 + 15}

    method velocidadDeCrucero() {
        return if (largo > 120)
            {rodado + 6}
        else
            {rodado + 2}
    }

    method carga(){return accesorio.sum({a => a.carga()})}


    method peso() {return (rodado / 2) + accesorio.sum({a => a.peso()})}

    method agregarUnAccesorio(unAccesorio){accesorio.add(unAccesorio)}

    method tieneLuz(){return accesorio.any({a => a.esLuminoso()})}
    
    method cantidadDeLivianos(){return accesorio.count({a => a.peso() < 1})}

	method sinAccesorios(){return accesorio.isEmpty()}
	
	method sonCompas(unaBici){
		return (unaBici != self) and (self.marca() == unaBici.marca()) 
		and (self.largo() - unaBici.largo() <= 10)
	}
	
	
}


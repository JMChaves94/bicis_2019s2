import bicis.*
import accesorios.*

class Depositos {
	
	const colecBicis = []
	
	method cantRapidas()
	{
		return colecBicis.filter({c => c.velocidadDeCrucero() > 25})
	}
	
	method agregarAlDeposito(unaBici){
		colecBicis.add(unaBici)
	}
	
	method lasMarcas(){
		return colecBicis.map({c => c.marca()}).asSet()
	}
	
	
	method esNocturno(){return colecBicis.all({c => c.tieneLuz()})}
	
	
	method puedeCargar(kilos) {
		return colecBicis.any({c => c.carga() > kilos})
	}
	
	method marcaMasRapida(){
		return colecBicis.max({c => c.velocidadDeCrucero()}).marca()
	}
	
	method cargaTotalBiciLarga(){
		return colecBicis.filter({c => c.largo() > 170}).sum({c => c.carga()})
	}
	
	method cantSinAccesorios(){
		return colecBicis.count({c => c.sinAccesorios()})
	}
	
	method compasColeccion(unaBici){
		return colecBicis.filter({c => c.sonCompas(unaBici)})
	}
	
	
}


/*Hay que crear una nueva clase que contenga los mismos métodos que los demas
 * accesorios para respetar el polimorfismo y así crear cualquier tipo de 
 *nuevo accesorio desde la consola*/
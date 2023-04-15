import armas.*
import elementos.*

object floki {
	var arma = ballesta
	
	method encontrar(elemento){
		if (arma.cargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}
	
	method arma() = arma
	
	method arma(unArma){
		arma = unArma
	}
}

object mario {
	var recolectado = 0
	var ulitmoVisto
	
	
	method encontrar(elemento){
		recolectado += elemento.entregarTrabajo()
		elemento.recibirTrabajo()
		ulitmoVisto = elemento
	}
	
	method ultimoVisto(){
		return ulitmoVisto
	}
	
	method esFeliz(){
		return ( recolectado >= 50 || ulitmoVisto.altura() >= 10 )
	}
	
	method recolectado() = recolectado
	
}
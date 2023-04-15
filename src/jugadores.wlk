import armas.*
import elementos.*
import personajes.*

object luisa {
	var personaje
	
	method personaje(unPersonaje){
		personaje = unPersonaje
	}
	
	method personaje(){
		return personaje
	}
	
	method aparece(elemento){
		personaje.encontrar(elemento)
	}
	
	
}

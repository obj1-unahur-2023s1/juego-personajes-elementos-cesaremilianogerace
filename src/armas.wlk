


object ballesta {
	var flechas = 10
	
	method potencia(){ return 4 }
	
	method cargada(){
		return flechas>0
	}
	
	method registrarUso(){
		flechas -= 1
	}
	
	method flechas() = flechas
	
}


object jabalina {
	
	var cargada = true
	
	method potencia(){ return 30 }
	
	method cargada(){ return cargada}
	
	method registrarUso(){
		cargada = false
	}
	
}


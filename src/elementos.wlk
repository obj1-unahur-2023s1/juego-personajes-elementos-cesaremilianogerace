object castillo {
	var nivelDefensa = 150
	
	method altura(){return 20}
	
	method vive(){} //polimorfismo
	
	method nivelDefensa(){return nivelDefensa}
	
	method recibirAtaque(potencia){
		nivelDefensa = (self.nivelDefensa()-potencia).max(0)
	}
	
	method entregarTrabajo(){
		return (nivelDefensa / 5)
	}
	
	method recibirTrabajo(){
		nivelDefensa = (self.nivelDefensa()+20).min(200)
	}
}

object aurora {
	var vive = true
	method	altura(){return 1}
	
	method vive(){return vive}
	
	method recibirAtaque(potencia){
		if (potencia>=10) {
			vive = false
		}
	}
	
	method entregarTrabajo(){
		return (15)
	}
	
	method recibirTrabajo(){} //polimorfismo
}

object tipa {
	var altura = 8
	
	method	altura(){
		return altura
	}
	
	method altura(unaAltura){altura += unaAltura}
	
	method vive(){} //polimorfismo
	
	method recibirAtaque(potencia){} // polimorfismo
	
	method entregarTrabajo(){
		return (self.altura()*2)
	}
	
	method recibirTrabajo(){
		self.altura(1)
	}
}


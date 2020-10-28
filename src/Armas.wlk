class Arma {
	
	method utilizarseCon(unaPersona)
	
	method matarA(unaPersona) {
		unaPersona.morirse()
	}
	
}

class Revolver inherits Arma {
	
	var property balas
	
	override method utilizarseCon(unaPersona) {
		if(! self.tieneBalas()) {
			throw new Exception(message = "El revolver no tiene mas balas!")
		}
		
		self.matarA(unaPersona)
		self.gastarUnaBala()
	}
	
	method tieneBalas() {
		return balas > 0
	}
	
	method gastarUnaBala() {
		balas -= 1
	}
	
	method recargarBalas(unaCantidad) {
		balas += unaCantidad
	}
	
	method esArmaSutil() {
		return balas == 1
	}
}

class Escopeta inherits Arma {
	
	override method utilizarseCon(unaPersona) {
		if(unaPersona.herida()) self.matarA(unaPersona)
		else self.herirA(unaPersona)
	}
	
	method herirA(unaPersona) {
		unaPersona.herirse()
	}
	
	method esArmaSutil() {
		return false
	}
	
}

class CuerdaDePiano inherits Arma {
	
	override method utilizarseCon(unaPersona) {
		if(self.esDeBuenaCalidad()) self.matarA(unaPersona)
	}
	
	method esDeBuenaCalidad() {
		return true // Duda
	}
	
	method esArmaSutil() {
		return true
	}
	
}
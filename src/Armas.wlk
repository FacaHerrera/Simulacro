class Arma {
	
	method utilizarseCon(unaPersona)
	
	method matarA(unaPersona) {
		unaPersona.morirse()
	}
	
	method herirA(unaPersona) {
		unaPersona.herirse()
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
	
	override method herirA(unaPersona) {
		
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
	
	method esArmaSutil() {
		return false
	}
	
}

class CuerdaDePiano inherits Arma {
	
	const buenaCalidad
	
	override method utilizarseCon(unaPersona) {
		if(buenaCalidad) self.matarA(unaPersona)
		else self.herirA(unaPersona)
	}
	
	method esArmaSutil() {
		return true
	}
	
}
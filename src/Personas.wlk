class Persona {
	
	var property familia
	var property armas = []
	var property rango
	var property lealtad
	var property herida
	var property vida
	
	method agregar(unArma) {
		armas.add(unArma)
	}
	
	method herirse() {
		self.herida(true)
	}
	
	method morirse() {
		self.vida(0)
	}
	
	method armaMasAMano() {
		return self.armas().head()
	}
}

class Don inherits Persona {
	
	var property subordinados = []
	
	method hacerSuTrabajoCon(unaPersona) {
		const subordinado = subordinados.anyOne()
		subordinado.hacerSuTrabajoCon(unaPersona)
		//subordinados.anyOne({unSubordinado => unSubordinado.hacerSutrabajoCon(unaPersona)})
	}
	
}

class SubJefe inherits Persona {
	
	var property subordinados = []
	
	method hacerSuTrabajoCon(unaPersona) {
		const arma = self.armaMasAMano()
		arma.utilizarseCon(unaPersona)
		self.cambiar(arma)
	}
	
	method cambiar(unArma) {
		armas.remove(unArma)
		armas.add(unArma)
	}
	
}

class Soldado inherits Persona {
	
	method hacerSuTrabajoCon(unaPersona) {
		const arma = self.armaMasAMano()
		arma.utilizarseCon(unaPersona)
	}
	
}

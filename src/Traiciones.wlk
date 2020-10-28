class Traicion {
	
	const traidor
	const nuevaFamilia
	var victimas = []
	var fecha
	const familia = self.familiaObjetivo()
	
	method familiaObjetivo() {
		return traidor.familia()
	}
	
	method atrasarseEn(unosDias) {
		fecha.plusDays(unosDias)
	}
	
	method agregarVictima(unaVictima) {
		victimas.add(unaVictima)
	}
	
	method complicarse(unosDias, nuevaVictima) {
		self.atrasarseEn(unosDias)
		self.agregarVictima(nuevaVictima)
	}
	
	method realizarse() {
		
		familia.agregarTraicion(self)
		
		if(self.condicionLealtad()) {
			traidor.morirse()
		}
		
		else self.ejecutarTraicion()
	}
	
	method ejecutarTraicion() {
		familia.sufrirAtaqueDe(traidor)
		traidor.familia(nuevaFamilia)
	}
	
	method condicionLealtad() {
		return familia.lealtadPromedio() > 2 * traidor.lealtad()
	}
}

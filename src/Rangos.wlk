import Personas.*

class Rango {
	
	method hacerDonA(unaPersona) {
		if(unaPersona.esElegante()) unaPersona.rango(don)
	}
	
	method hacerTrabajoCon(unaPersona, otraPersona)
	
}

object don inherits Rango {
	
	var property subordinados = []
	
	override method hacerTrabajoCon(unaPersona, otraPersona) {
		const subordinado = subordinados.anyOne()
		subordinado.hacerSuTrabajoCon(otraPersona)
		//subordinados.anyOne({unSubordinado => unSubordinado.hacerSutrabajoCon(unaPersona)})
	}
	
	method eleganciaDe(unaPersona) {
		return true
	}
	
	override method hacerDonA(unaPersona) {
		
	}
}

object subjefe inherits Rango {
	
	var property subordinados = []
	
	override method hacerTrabajoCon(unaPersona, otraPersona) {
		const arma = unaPersona.armaMasAMano()
		arma.utilizarseCon(otraPersona)
		unaPersona.cambiar(arma)
	}
	
	method eleganciaDe(unaPersona) {
		return subordinados.any({unSubordinado => unSubordinado.tieneArmaSutil()})
	}
	
}

object soldado inherits Rango {
	
	override method hacerTrabajoCon(unaPersona, otraPersona) {
		const arma = unaPersona.armaMasAMano()
		arma.utilizarseCon(unaPersona)
	}
	
	method eleganciaDe(unaPersona) {
		return unaPersona.tieneArmaSutil()
	}
	
	method hacerSubjefeA(unaPersona) {
		unaPersona.rango(subjefe)
	}

}
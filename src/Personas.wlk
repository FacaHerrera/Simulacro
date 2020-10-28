import Rangos.*

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
	
	method duermeConLosPeces() {
		return vida == 0
	}
	
	method cantidadDeArmas() {
		return armas.size()
	}
	
	/////////////////////////////
	
	method cambiar(unArma) {
		armas.remove(unArma)
		armas.add(unArma)
	}
	
	method tieneArmaSutil() {
		return armas.any({unArma => unArma.esArmaSutil()})
	}
	
	method hacerSuTrabajoCon(otraPersona) {
		rango.hacerTrabajoCon(self, otraPersona)
	}
	
	method ascenderASubjefe() {
		rango.hacerSubjefeA(self)
	}
	
	method ascenderADon() {
		rango.hacerDonA(self)
	}
	
	method tieneMasArmasQue(unaCantidad) {
		return armas.size() > 5
	}
	
	method esElegante() {
		return rango.eleganciaDe(self)
	}
	
	method esSoldado() {
		return rango.equals(soldado)
	}
	
	method aumentarLealtadEn(unaCantidad) {
		lealtad *= unaCantidad
	}
	
}

//class Don inherits Persona {
//	
//	var property subordinados = []
//	
//	method hacerSuTrabajoCon(unaPersona) {
//		const subordinado = subordinados.anyOne()
//		subordinado.hacerSuTrabajoCon(unaPersona)
//		//subordinados.anyOne({unSubordinado => unSubordinado.hacerSutrabajoCon(unaPersona)})
//	}
//	
//	method elegancia() {
//		return true
//	}
//	
//}
//
//class SubJefe inherits Persona {
//	
//	var property subordinados = []
//	
//	method hacerSuTrabajoCon(unaPersona) {
//		const arma = self.armaMasAMano()
//		arma.utilizarseCon(unaPersona)
//		self.cambiar(arma)
//	}
//	
//	method cambiar(unArma) {
//		armas.remove(unArma)
//		armas.add(unArma)
//	}
//	
//	method elegancia() {
//		return subordinados.any({unSubordinado => unSubordinado.tieneArmaSutil()})
//	}
//	
//}
//
//class Soldado inherits Persona {
//	
//	method hacerSuTrabajoCon(unaPersona) {
//		const arma = self.armaMasAMano()
//		arma.utilizarseCon(unaPersona)
//	}
//	
//	method tieneArmaSutil() {
//		return armas.any({unArma => unArma.esArmaSutil()})
//	}
//	
//	method elegancia() {
//		return self.tieneArmaSutil()
//	}
//	
//	method hacerseSubjefe() {
//		self = new Subjefe(subordinados = [])
//	}
//	
//}

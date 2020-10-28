import Armas.*

class Familia {
	
	var property miembros = []
	var property don
	
	method peligroso() {
		const vivos = self.miembrosVivos()
		return vivos.max({unMiembro => unMiembro.cantidadDeArmas()})
	}
	
	method miembrosVivos() {
		return miembros.filter({unMiembro => !unMiembro.duermeConLosPeces()})
	}
	
	method elQueQuieraAndarArmadoQueAndeArmado() {
		miembros.forEach({unMiembro => unMiembro.agregar(new Revolver(balas = 6))})
	}
	
	method estanTodosMuertos() {
		return miembros.all({unMiembro => unMiembro.duermeConLosPeces()})
	}
	
	method ataqueSorpresaA(otraFamilia) {
		if(otraFamilia.estanTodosMuertos()) {
			throw new Exception(message = "Los miembros de la familia enemiga ya estan todos muertos!")
		}
		
		miembros.forEach({unMiembro => unMiembro.hacerSuTrabajoCon(otraFamilia.peligroso())})
	} // DUDA
	
	method reorganizarSubjefes() {
		const soldados = miembros.filter({unMiembro => unMiembro.esSoldado()})
		const armeros = soldados.filter({unMiembro => unMiembro.tieneMasArmasQue(5)})
		armeros.forEach({unMiembro => unMiembro.ascenderASubjefe()})
	}
	
	method nombrarNuevoDon() {
		const masLeal = miembros.max({unMiembro => unMiembro.lealtad()})
		masLeal.ascenderADon()
	}
	
	method aumentarLealtadMasivamenteEn(unaCantidad) {
		miembros.forEach({unMiembro => unMiembro.aumentarLealtadEn(unaCantidad)})
	}
	
	method reorganizarse() {
		self.reorganizarSubjefes()
		self.nombrarNuevoDon()
		self.aumentarLealtadMasivamenteEn(1.1)
	}
	
}

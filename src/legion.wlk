import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	//conformada por niños
	var integrantes = [ ]

	//capacidad de asustar es la suma de las capacidades de susto de sus integrantes
	method capacidadAsustar() = 
		integrantes.sum({_ninio=>_ninio.capacidadAsustar()})
	
	//metodo para definir al lider del grupito
	method quienLidera() = 
		integrantes.max({ _ninio => _ninio.capacidadAsustar() })
		
	//metodo para recibir caramelos, los recibe el lider del grupo
	method recibirCaramelos(cant){
		self.quienLidera().recibirCaramelos(cant)
	}
}


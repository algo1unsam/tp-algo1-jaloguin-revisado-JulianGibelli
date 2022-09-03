import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	//conformada por niños
	var property integrantes = [ ]

	//capacidad de asustar es la suma de las capacidades de susto de sus integrantes
	method capacidadAsustar() = 
		integrantes.sum({_ninio=>_ninio.capacidadAsustar()})
	
	//metodo para definir al lider del grupito
	method quienLidera() = 
		integrantes.max({ _ninio => _ninio.capacidadAsustar() })
		
	//metodo para recibir caramelos, los recibe el lider del grupo
	method recibirCaramelos(cant){
		return self.quienLidera().recibirCaramelos(cant)
	}
	
	//metodo suma de caramelos de todos los integrantes
	method caramelos() =
		integrantes.sum({i=>i.caramelos()})
	
	//metodo para agregar niños a la legion, entran en conj
	method agregarInt(_ninios) = integrantes.addAll(_ninios)
	
	//metodo para obtener los N niños con mayor cantidad de caramelos
	method integrantesConMasCaramelos(_cuantos){		
		var ordenados = integrantes.sortedBy({ a, b => a.caramelos() > b.caramelos() })
		return ordenados.take(_cuantos)
	}
}


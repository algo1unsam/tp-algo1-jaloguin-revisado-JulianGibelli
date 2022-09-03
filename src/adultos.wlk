import chicos.*
import legion.*
import elementos.*

object mirca {
	var  tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	
	//solo se asusta si su tolerancia es menor que la capacidad de susto del niño (devuelve true o false)
	method meAsusto(_ninio) = 
		self.tolerancia() < _ninio.capacidadAsustar()
		
	//da caramelos como la diferencia entre su tolerancia  el nivel de susto del niño
	method doyCaramelos(_ninio){
		//si lo lograron asustar
		if (self.meAsusto(_ninio)){
			//guardo la cantidad de caramelos actuales del niño y cuantos nuevos a darle
			var acum = _ninio.caramelos() + (self.tolerancia() - _ninio.capacidadAsustar())
			//le asigno al niño su nueva cantidad
			_ninio.recibirCaramelos(acum)
			//limpio acum
			acum = 0
		}			
		//reduce su tolerancia en 1 haya sido asustado o no
		tolerancia = tolerancia - 1
		
	}
}

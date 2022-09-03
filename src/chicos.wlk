import elementos.*
import adultos.*
import legion.*

object macaria {
	//tiene nivel inicial de ira de 10
	var property nivelIra= 10
	var disfraces = []
	var property caramelos = 0

	//se incrementa su ira si la hacen enojar
	method meEnojo() = return self.nivelIra() + 1
	
//la capacidad de asustar depende de su nivel de ira y de la suma total de la capacidad de asustar de los disfraces que lleve
	method capacidadAsustar() = 
		self.nivelIra() + disfraces.fold(0,{acum,disfraz => acum + disfraz.nivelSusto()})
	
	//metodo para recibir caramelos (reveer para macaria)	
	method recibirCaramelos(_cant){
		var acum = _cant.div(4)
		self.caramelos(acum)
		acum = 0
	}
	
	method poneteDisfraz(_disfraz){
		disfraces.add(_disfraz)
	}
	
	method dejaDisfraz(){
		var aSacar = disfraces.last()
		disfraces.remove(aSacar)
	}
	
	//debe dejar de usar el disfraz que asuste menos	
	method dejoElPeor(){
		var elPeor = disfraces.min({d => d.nivelSusto()})
		disfraces.remove(elPeor)
	}
	
	//para saber cuales lleva
	method cualesLlevas() = return disfraces
}

object pancracio {
	
	//no le gusta llevar mas de 1 disfraz
	//inicialmente lleva a mascara dracula
	var property disfraz = mascaraDracula
	var property susto = ["b","u","u"]
	var property caramelos = 0

	//su capacidad de susto es cantidad de "u" de su grito + capacidad de susto de su unico disfraz
	method capacidadAsustar() = 
		susto.count{l => l == "u"} + disfraz.nivelSusto()


	//cuando le piden que deje el disfraz no hace caso y se enoja
	method dejaDisfraz(){
		//ejecuta meEnojo
		self.meEnojo()
	}
	//cuando se enoja agrega
	method meEnojo(){		
			susto.add("u")
			susto.add("u")	
	}
	
	method poneteDisfraz(_disfraz){
		self.disfraz(_disfraz)
	}
	
	//metodo para recibir caramelos
	
	method recibirCaramelos(_cant){
		self.caramelos(_cant)
	}
}

// El chico inventado .

object pedro {

	var disfraces = []
	var property caramelos = 0
	
	method poneteDisfraz(_disfraz){
		disfraces.add(_disfraz)
	}
	
	method dejaDisfraz(){
		var aSacar = disfraces.last()
		disfraces.remove(aSacar)
	}
	
	method cualesLlevas() = return disfraces
	
	method recibirCaramelos(_cant){
		self.caramelos(_cant)
	}
	
	method capacidadAsustar() = 
		disfraces.fold(10,{acum,disfraz => acum + disfraz.nivelSusto()})
	
}


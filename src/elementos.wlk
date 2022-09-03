object trajeDeBruja {
	//asusta 10
	method nivelSusto() {
		return 10
	}
} 

object barba {
	//inicialmente es 2, con el tiempo se acorta o la madre de algun niño le puede agregar
	var property longitud = 2
	
	//su capacidad de asustar es 5 veces su longitud
	method nivelSusto(){
		return 5 * self.longitud()
	}
}

object mascaraDracula {
	//su tamaño es de 2 unidades
	const tamanio = 2

	method nivelSusto(){
		return 2 * tamanio
	}
}

object mascaraFrankenstein {
	//su tamaño es de 22 unidades
	const tamanio = 22

	method nivelSusto(){
		return 2 * tamanio
	}
}

object mascaraPolitico {
	//su tamaño es de 2 unidades * cantida de promesas hechas
	var property promesas

	method nivelSusto(){
		return 2 * self.promesas()
	}	
	
}


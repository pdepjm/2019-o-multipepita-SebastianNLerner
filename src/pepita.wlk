object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	//2
	method estaFeliz() {
		return 500< energia and energia < 1000
	}
	
	method cuantoQuiereVolar() {
		var distancia = (energia/5)
		if (energia.between(300,400))
		{
			distancia+= 10
		}
		if(energia%20==0)
		{
			distancia+=15
		}
		return distancia
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if(self.estaCansada())
		{
			self.come(alpiste)
		}
		if(self.estaFeliz())
		{
			self.vola(8)
		}
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo{
	var mojado = true
	
	method mojarse() {
		mojado = true
	}
	
	method secarse() {
		mojado=false
	}
	
	method energiaQueOtorga(){
		if (mojado)
		{
			return 15
		}
		else
		{
			return 20
		}
	}
}

object canelones{
	var tienenSalsa = false
	var tienenQueso = false
	
	method ponerSalsa() {
		tienenSalsa = true
	}
	method sacarSalsa() {
		tienenSalsa = false
	}
	method ponerQueso() {
		tienenQueso = true
	}
	method sacarQueso() {
		tienenQueso = false
	}
	
	method energiaQueOtorga(){
		var energia = 20
		if(tienenSalsa)
		{
			energia+=5
		}
		if(tienenQueso)
		{
			energia+=7
		}
		return energia
	}
}

//3
object roque{
	method entrenar(){
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}

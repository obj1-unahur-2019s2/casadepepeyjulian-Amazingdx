object heladera 
{
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama 
{
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado 
{
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos 
{
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha 
{
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
//=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  Mas cosas =-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=--=-=-=--=-=-//

object milanesasRebozadas 
{   
	var property precio = 260
	
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaSalsaTomates 
{
	var property precio = 90
	
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas 
{
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloCebollas 
{
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}
        
             //precio dolar//
			object dolar 
			{
			    method cotizacion() {return 60}
			}

object computadora 
{
	var property precioDolares = 500
   
    var property precioPesos = precioDolares * dolar.cotizacion()
	
	method precio() { return precioPesos }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object packComida 
{
	//plato -> lista de comidas y 1 aderezo (salsaTomate o cebollas)
	//precio = la suma de los precios de todos los componentes
	
	var plato
	var aderezo
	
	method plato()   {return plato}
	method aderezo() {return aderezo}
	method configurar(unPlato, unAderezo)
	{
		plato = unPlato
		aderezo = unAderezo
	}
	
	method precio() { return plato.precio() + aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object packRegalo 
{
    //cantidad random de cosas, se considera comida si todos los componentes son comida
    // se considera electrodomestico si al menos 1 de los componentes es un electrodomestico
    //precio = suma de todos los componentes - 20 % del total	
	
	method precio() { return 1200 }
	
	//TODO
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}







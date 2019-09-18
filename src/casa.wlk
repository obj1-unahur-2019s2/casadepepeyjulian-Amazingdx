import cosas.* 

object casaDePepeYJulian 
{
	const cosas = []

	method comprar(cosa)
	{
		cosas.add(cosa)		
		//TODO: que registre gasto tomando el precio de la cosa que se compra
		//      P.ej. comprar la tira de asado implica gastar 350 pesos.
	}
	
	method cantidadDeCosasCompradas()  {   return cosas.size()	}
	
	method tieneComida()  {   return cosas.any { cosa => cosa.esComida()}   }
	
	method vieneDeEquiparse()
	{
		return cosas.last().esElectrodomestico()  or
		       cosas.last().precio() > 5000
	}
	
	method esDerrochona()  {   return (cosas.sum {elemento => elemento.precio() }) >= 9000  }
	
	method compraMasCara()   {   return cosas.max {cos => cos.precio()}   }
	
	method electrodomesticosComprados()
	{
	    return cosas.filter { cosa => cosa.esElectrodomestico() }	
	}
	
	method malaEpoca()   {   return cosas.all { cosa => cosa.esComida() }   }
	
	method queFaltaComprar(lista)
	{
		return lista.filter { deseo => not cosas.contains(deseo) }
		//return (lista.asSet()).difference(cosas.asSet())
	}
	
	method faltaComida()
	{   
		//returns true si cosas que sean comida es menor a 2
		return  (  cosas.count  { cosa => cosa.esComida() }  ) < 2
	}

//--=-=-=-=-=-=-=--= Metodos de cuenta bancaria:

	method gastar(importe)
	{
		
	}
	
	method dineroDisponible()
	{
		
	}

}
//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-  Cuenta bancaria =-=-==-=-=-=-=-=-=-=-=-=-=-=-==-=-//
object cuentaBancaria
{
	var property dineroCuenta = 0
	
	method depositar(importe)
	{
		
	}
	
	method estraer(importe)
	{
		
	}
	
	method saldo()
	{
		
	}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  Incluir tres cuentas ===--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-//

//cuenta corriente

//cuenta con gastos

//cuenta combinada

}

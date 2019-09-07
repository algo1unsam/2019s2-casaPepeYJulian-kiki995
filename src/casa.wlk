import cosas.*
import CuentaCorriente.*

object casaDePepeYJulian {

	const cosas = []

	method cosas() {
		return cosas
	}

	method comprar(cosa) {
		if (cuentaCorriente.saldo() >= cosa.precio()) {
			cuentaCorriente.extraer(cosa.precio())
			cosas.add(cosa)
		}
	}

	method cantidadDeCosasCompradas() {
		return cosas.size()
	}

	method tieneComida() {
		return cosas.any({ cosa => cosa.esComida() })
	}

	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico()
	}

	method esDerrochona() {
		return cosas.map({ cosa => cosa.precio() }).sum() > 9000
	}

	method compraMasCara() {
		return cosas.max({ cosa => cosa.precio() })
	}

	method electrodomesticosComprados() {
		return cosas.map({ cosa => cosa.esElectrodomestico() })
	}

	method queFaltaComprar(lista) {
		return lista.difference(cosas.asSet())
	}

}


object cuentaCorriente {

	var saldo

	method depositar(importe) {
		saldo = importe
	}

	method extraer(importe) {
		if (saldo >= importe) {
			saldo -= importe
		} else self.error("sueldo insuficiente")
	}

	method saldo() {
		return saldo
	}

}

object cuentaConGastos {

	var saldo

	method depositar(importe) {
		saldo = (importe - 20)
	}

	method extraer(importe) {
		if (saldo >= importe) {
			if (importe < 1000) {
				saldo -= (importe - 20)
			} else saldo -= (importe + (importe * 0.2))
		} else self.error("sueldo insuficiente")
	}

}


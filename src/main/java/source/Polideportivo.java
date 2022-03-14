package source;

public class Polideportivo implements Edificio, InstalacionDeportiva {
	private int numeroOficinas;
	private double ancho;
	private double largo;
	private int numeroPisos;

	public Polideportivo(int numeroOficinas, double ancho, double largo, int numeroPisos) {
		this.numeroOficinas = numeroOficinas;
		this.ancho = ancho;
		this.largo = largo;
		this.numeroPisos = numeroPisos;
	}

	public int getNumeroOficinas() {
		return numeroOficinas;
	}

	public void setNumeroOficinas(int numeroOficinas) {
		this.numeroOficinas = numeroOficinas;
	}

	public double getAncho() {
		return ancho;
	}

	public void setAncho(double ancho) {
		this.ancho = ancho;
	}

	public double getLargo() {
		return largo;
	}

	public void setLargo(double largo) {
		this.largo = largo;
	}

	public int getNumeroPisos() {
		return numeroPisos;
	}

	public void setNumeroPisos(int numeroPisos) {
		this.numeroPisos = numeroPisos;
	}

	// metodo implementado desde interface InstalacionDeportiva
	@Override
	public int getTipoInstalacion(String tipoInstalacion) {
		if (tipoInstalacion.equals("techado") || tipoInstalacion.equals("Techado")) {
			return 1;
		} else if (tipoInstalacion.equals("abierto") || tipoInstalacion.equals("Abierto")) {
			return 2;
		} else {
			return 3;
		}
	}

	// Metodo implementado desde interface Edificio
	@Override
	public double getSuperficieEdificio() {
		return (this.ancho * this.largo * this.numeroPisos);
	}

}

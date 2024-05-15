import profesionales.*
import universidades.*

class Empresa{
	const profesionales = #{}
	var  property honorarioDeReferencia 
	
	method agregarProfesionales(unProfesional){
		profesionales.add(unProfesional)
	}
	method eliminarProfesional(unProfesional){
		profesionales.remove(unProfesional)
	}
	method cuantosEstudiaronEn(unaUniversidad){
		return profesionales.count({p => p.universidad() == unaUniversidad})
	}
	method profesionalesCaros(){
		return profesionales.filter({p => p.honorariosPorHora() > self.honorarioDeReferencia()})
	}
	method universidadesFormadoras(){
		return profesionales.map({p=> p.universidad()}).asSet() //Transforma una lista en un conjunto sin repetidos
	}
	method profesionalMasBarato(){
		return profesionales.min({p => p.honorariosPorHora()})
	}
	method esDeGenteAcotada(){
		return profesionales.all({p => p.provinciasDondePuedeTrabajar().size() < 4})
	}
}
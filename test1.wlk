import personaje.*
import hechizoDeLogo.*

describe "Tests TP 2 parte 1"{
  const espectroMalefico = new HechizoDeLogo("espectro malefico",1)
	const rolando = new Personaje(espectroMalefico)
	
  fixture{
		rolando.hechizoPreferido(espectroMalefico)
	}
	
	test "El nivel de hechiceria de Rolando es 56"{
	  assert.equals(rolando.nivelHechiceria(),56)
	}
	
	test "Con otro nombre del espectro malefico, el nivel de hechiceria de Rolando es 125"{
		espectroMalefico.nombre("espectro superrecontramalefico muajajaja")
		assert.equals(rolando.nivelHechiceria(),125)
	}
	
	test "Con el hechizo basico como preferido, el nivel de hechiceria de Rolando es 35"{
		rolando.hechizoPreferido(hechizoBasico)
		assert.equals(rolando.nivelHechiceria(),35)
	}
	
	test "Despues de un eclipse, el nivel de hechiceria de Rolando es 61"{
		oscuridad.eclipse()
		assert.equals(rolando.nivelHechiceria(),61)
	}
	
	test "El espectro malefico es poderoso"{
		assert.that(espectroMalefico.esPoderoso())
	}
	
	test "El espectro malefico con nombre pepe, NO es poderoso"{
		espectroMalefico.nombre("pepe")
		assert.notThat(espectroMalefico.esPoderoso())
	}
	
	test "El hechizo basico NO es poderoso"{
		assert.notThat(hechizoBasico.esPoderoso())
	}
}

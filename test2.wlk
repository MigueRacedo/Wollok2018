import personaje.*
import lucha.*
import hechizoDeLogo.*
import mascara.*

describe "Tests TP2 Parte 2"{
		const rolando = new Personaje(hechizoBasico)
		const mascaraOscura = new Mascara(1)
		
		fixture{
			rolando.equiparArtefacto(espadaDelDestino)
			rolando.equiparArtefacto(collarDivino)
			rolando.equiparArtefacto(mascaraOscura)
		}
		
		test "Eliminando todos los artefactos, la habilidad de lucha de Rolando es 1"{
			rolando.sinArtefactos()
			assert.equals(rolando.habilidadLucha(),1)
		}
		
		test "Con todos los artefactos, la habilidad de lucha de Rolando es 13"{
			assert.equals(rolando.habilidadLucha(),13)
		}
		
		test "Con un collar divino de 3 perlas, la habilidad de lucha de Rolando es 11"{

			collarDivino.perlas(3)
			assert.equals(rolando.habilidadLucha(),11)
		}
		
		test "Con un valor base de lucha 8, la habilidad de lucha de Rolando es 1"{
			rolando.valorBaseLucha(8)
			assert.equals(rolando.habilidadLucha(),20)
		}
			
		test "Despues de un eclipse, el poder de lucha de la mascara oscura es 5"{
			oscuridad.eclipse()
			assert.equals(mascaraOscura.nivelDePoderLucha(rolando),5)
		}
		
		test "Sin la mascara oscura, la habilidad de lucha de Rolando es 9"{
			rolando.soltarArtefacto(mascaraOscura)
			assert.equals(rolando.habilidadLucha(),9)
		}
		
		test "Con una mascara oscura de indice 0, la habilidad de lucha de Rolando es 4"{
			mascaraOscura.indiceOscuridad(0)
			assert.equals(mascaraOscura.nivelDePoderLucha(rolando),4)
		}
		
		test "Con una mascara oscura de indice 0 y minimo 2, la habilidad de lucha de Rolando es 2"{
			mascaraOscura.indiceOscuridad(0)
			mascaraOscura.minimoPoder(2)
			assert.equals(mascaraOscura.nivelDePoderLucha(rolando),2)
		}				
}

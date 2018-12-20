# Clase Etiqueta, destinada a la representación de los valores nutricionales propios 
# de un producto comercial comestible. Calcula también su valor energético y la IR(r)
#  
# # @author Fernando González Petit
# # @since 0.1.0
# # @attr_reader [string]  name: Nombre del producto
# # 		 [float]   cant: Cantidad en gramos de total
# #		 [integer] npor: Numero de porciones
# # 		 [float]   g:	 Grasas totales
# #		 [float]   sat:	 Grasas	saturadas
# #		 [float]   msat: Monosaturadas
# #              [float]   psat: Polisaturadas
# #    		 [float]   hid:	 Hidratos
# #		 [float]   a:	 Azúcares
# #		 [float]   palc: Polialcoholes
# # 		 [float]   alm:  Almidones
# #		 [float]   fib:  Fibra alimentaria
# #		 [float]   pr:	 Proteínas
# #		 [float]   sal:  Sales
# #		 [float]   vit:  Vitaminas
# #		 [float]   min:  Minerales
#
# Incluye utilidades del módulo Comparable
#
class Etiqueta
  	
  include Comparable
  attr_reader :name, :cant, :npor, :g, :sat, :msat, :psat, :hid, :a, :palc, :alm, :fib, :pr, :sal, :vit, :min
 
  # Método <=>, implementa operadores de comparación entre objetos del mismo tipo. El atributo a comparar es el valor energético
  #
  # @author Fernando González Petit
  # 
  # @see http://ruby-doc.org/core-2.1.3/Comparable.html
  # @see Etiqueta::val_ene_kj
  #
  # @public
  # @param anOther: Objeto Etiqueta a comparar
  #
  # @return [true/false] if self.val_ene_kj <=> anOther.val_ene_kj
  #
  def <=>(anOther)
	 val_ene_kj <=> anOther.val_ene_kj
  end

  # Initialize para la clase Etiqueta
  #
  # @author Fernando González Petit
  #
  # @public
  # @param see attr_reader
  #
  def initialize(n,cant,npor,g,s,ms,ps,h,a,pa,al,fib,p,sal,vit,min)
    @name = n
    @cant = cant
    @npor = npor    
    @g = g
    @sat = s
    @msat = ms
    @psat = ps
    @hid = h
    @a = a
    @palc = pa
    @alm = al
    @fib = fib
    @pr = p
    @sal = sal 
    @vit = vit
    @min = min
  end

  # Valor energético para las grasas (kj) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para las grasas en kiloJulios
  def val_gras_kj
    (@g * 37).round(2) 
  end

  # Valor energético para las grasas (kcal) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para las grasas en kiloCalorías
  def val_gras_kcal
    (@g * 9).round(2)	  
  end

  # Valor energético para los hidratos (kj) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para los hidratos en kiloJulios
  def val_hidr_kj
    (@hid * 17).round(2)	  
  end

  # Valor energético para los hidratos (kcal) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para los hidratos en kiloCalorías
  def val_hidr_kcal
    (@hid * 4).round(2)	  
  end


  # Valor energético para la fibra alimentaria (kj) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para la fibra alimentaria en kiloJulios
  def val_fib_kj
    (@fib * 8).round(2)
  end


  # Valor energético para la fibra alimentaria (kcal) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para la fibra alimentaria en kiloCalorías
  def val_fib_kcal
    (@fib * 2).round(2)	  
  end


  # Valor energético para las proteínas (kj) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para las proteínas en kiloJulios
  def val_prot_kj
    (@pr * 17).round(2)
  end

  # Valor energético para las proteínas (kcal) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para las proteínas en kiloCalorías
  def val_prot_kcal
    (@pr * 4).round(2)
  end

  # Valor energético para las sales (kj) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para las sales en kiloJulios
  def val_sal_kj
    (@sal * 25).round(2)	  
  end

  # Valor energético para las sales (kcal) en base a 100 g de producto
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Valor energético para las sales en kiloCalorías
  def val_sal_kcal
    (@sal * 6).round(2)
  end

  # Valor energético total (kj) en base a 100 g de producto
  #
  # @author Fernando González Petit
  # @see Etiqueta::val_gras_kj, Etiqueta::val_hidr_kj, Etiqueta::val_fib_kj, Etiqueta::val_prot_kj, Etiqueta::val_sal_kj 
  #
  # @public
  #
  # @return [float] Valor energético total en kiloJulios
  def val_ene_kj
	  (val_gras_kj + val_hidr_kj + val_fib_kj + val_prot_kj + val_sal_kj).round(2)	  
  end

  # Valor energético total (kcal) en base a 100 g de producto
  #
  # @author Fernando González Petit
  # @see Etiqueta::val_gras_kcal, Etiqueta::val_hidr_kcal, Etiqueta::val_fib_kcal, Etiqueta::val_prot_kcal, Etiqueta::val_sal_kcal 
  #
  # @public
  #
  # @return [float] Valor energético total en kiloCalorías
  def val_ene_kcal
	  (val_gras_kcal + val_hidr_kcal + val_fib_kcal + val_prot_kcal + val_sal_kcal).round(2)  
  end

#CALCULOS PARA PORCIONES: MASA Y VAL. ENERGETICO  

  
  # Gramos por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [float] Cantidad en gramos por porción de producto
  def g_porcion
    (@cant/@npor).round(2)
  end

  # Gramos de grasa por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de grasas totales en gramos por porción de producto
  def gras_por
    (g_porcion*@g/100).round(2)
  end
 
  # Gramos de grasas saturadas por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de grasas saturadas en gramos por porción de producto
  def gsat_por
    (g_porcion*@sat/100).round(2)
  end 

  # Gramos de grasas monosaturadas por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de grasas monosaturadas en gramos por porción de producto
  def msat_por
    (g_porcion*@msat/100).round(2)
  end

  # Gramos de grasas polisaturadas por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de grasas polisaturadas en gramos por porción de producto
  def psat_por
    (g_porcion*@psat/100).round(2)
  end

  # Gramos de hidratos por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de hidratos en gramos por porción de producto
  def hidr_por
    (g_porcion*@hid/100).round(2)
  end

  # Gramos de azúcar por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de azúcar en gramos por porción de producto
  def a_por
    (g_porcion*@a/100).round(2)
  end
  
  # Gramos de polialcoholes por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de polialcoholes en gramos por porción de producto
  def polia_por
    (g_porcion*@palc/100).round(2)
  end

  # Gramos de almidón por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de almidón en gramos por porción de producto
  def alm_por
    (g_porcion*@alm/100).round(2)
  end

  # Gramos de fibra alimentaria por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de fibra alimentaria en gramos por porción de producto
  def fib_por
    (g_porcion*@fib/100).round(2)
  end

  # Gramos de proteínas por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de proteínas en gramos por porción de producto
  def prot_por
    (g_porcion*@pr/100).round(2)
  end

  # Gramos de sales por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de sales en gramos por porción de producto
  def sal_por
    (g_porcion*@sal/100).round(2)
  end

  # Gramos de vitaminas por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de vitaminas en gramos por porción de producto
  def vit_por
    (g_porcion*@vit/100).round(2)
  end

  # Gramos de minerales por porción en base a los gramos totales/número de porciones
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::g_porcion
  #
  # @public
  #
  # @return [float] Cantidad de minerales en gramos por porción de producto
  def min_por
    (g_porcion*@min/100).round(2)
  end


  # Valor energético para las grasas (kj) en base a porciones de producto
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::gras_por
  #
  # @public
  #
  # @return [float] Valor energético de las grasas por porción en kiloJulios
  def gras_por_kj
    (gras_por*37).round(2)
  end

  # Valor energético para las grasas (kcal) en base a porciones de producto
  #
  # @author Fernando González Petit
  #
  # @see Etiqueta::gras_por
  # 
  # @public
  #
  # @return [float] Valor energético de las grasas por porción en kiloCalorías
  def gras_por_kcal
    (gras_por*9).round(2)
  end

  # Valor energético para los hidratos (kj) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::hidr_por
  #
  # @public
  #
  # @return [float] Valor energético de los hidratos por porción en kiloJulios
  def hidr_por_kj
    (hidr_por*17).round(2)
  end

  # Valor energético para los hidratos (kcal) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::hidr_por
  #
  # @public
  #
  # @return [float] Valor energético de los hidratos por porción en kiloCalorías
  def hidr_por_kcal
    (hidr_por*4).round(2)
  end

  # Valor energético para la fibra alimentaria (kj) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::fib_por
  #
  # @public
  #
  # @return [float] Valor energético de la fibra alimentaria por porción en kiloJulios
  def fib_por_kj
    (fib_por*8).round(2)
  end

  # Valor energético para la fibra alimentaria (kcal) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::fib_por
  #
  # @public
  #
  # @return [float] Valor energético de la fibra alimentaria por porción en kiloCalorías
  def fib_por_kcal
    (fib_por*2).round(2)
  end

  # Valor energético para las proteínas (kj) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::prot_por
  #
  # @public
  #
  # @return [float] Valor energético de las proteínas por porción en kiloJulios
  def prot_por_kj
    (prot_por*17).round(2)	  
  end

  # Valor energético para las proteínas (kcal) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::prot_por
  #
  # @public
  #
  # @return [float] Valor energético de las proteínas por porción en kiloCalorías
  def prot_por_kcal
    (prot_por*4).round(2)	  
  end

  # Valor energético para las sales (kj) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::sal_por
  #
  # @public
  #
  # @return [float] Valor energético de las sales por porción en kiloJulios
  def sal_por_kj
    (sal_por*25).round(2)
  end

  # Valor energético para las sales (kcal) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::sal_por
  #
  # @public
  #
  # @return [float] Valor energético de las sales por porción en kiloCalorías
  def sal_por_kcal
    (sal_por*6).round(2)	  
  end

  # Valor energético total (kj) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::gras_por_kj, Etiqueta::hidr_por_kj, Etiqueta::fib_por_kj, Etiqueta::prot_por_kj, Etiqueta::sal_por_kj
  #
  # @public
  #
  # @return [float] Valor energético total por porción en kiloJulios
  def val_ene_por_kj
    (gras_por_kj + hidr_por_kj + fib_por_kj + prot_por_kj + sal_por_kj).round(2)
  end

  # Valor energético total (kcal) en base a porciones de producto
  #
  # @author Fernando González Petit
  # 
  # @see Etiqueta::gras_por_kcal, Etiqueta::hidr_por_kcal, Etiqueta::fib_por_kcal, Etiqueta::prot_por_kcal, Etiqueta::sal_por_kcal
  #
  # @public
  #
  # @return [float] Valor energético total por porción en kiloCalorías
  def val_ene_por_kcal
    (gras_por_kcal + hidr_por_kcal + fib_por_kcal + prot_por_kcal + sal_por_kcal).round(2)
  end

#CALCULO DE %IR 100g Y PORCIONES

  # Ingesta de Referencia (IR) de grasas en base a 100 g de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de grasas en base a 100g de producto
  def ir_gras
    (@g*100/70).round(2)
  end

  # Ingesta de Referencia (IR) de grasas en base a porción de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de grasas en base a porción de producto
  def ir_gras_por
    (gras_por*100/70).round(2)
  end 

  # Ingesta de Referencia (IR) de grasas saturadas en base a 100 g de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de grasas saturadas en base a 100g de producto
  def ir_gsat
    (@sat*100/20).round(2)
  end

  # Ingesta de Referencia (IR) de grasas saturadas en base a porción de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de grasas saturadas en base a porción de producto
  def ir_gsat_por
    (gsat_por*100/20).round(2)
  end

  # Ingesta de Referencia (IR) de hidratos en base a 100 g de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de hidratos en base a 100g de producto
  def ir_hidr
    (@hid*100/260).round(2)
  end

  # Ingesta de Referencia (IR) de hidratos en base a porción de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de hidratos en base a porción de producto
  def ir_hidr_por
    (hidr_por*100/260).round(2) 
  end

  # Ingesta de Referencia (IR) de azúcares en base a 100 g de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de azúcares en base a 100g de producto
  def ir_a
    (@a*100/90).round(2)
  end

  # Ingesta de Referencia (IR) de azúcares en base a porción de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de azúcares en base a porción de producto
  def ir_a_por
    (a_por*100/90).round(2)
  end

  # Ingesta de Referencia (IR) de proteínas en base a 100 g de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de proteínas en base a 100g de producto
  def ir_prot
    (@pr*100/50).round(2)
  end

  # Ingesta de Referencia (IR) de proteínas en base a porción de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de proteínas en base a porción de producto
  def ir_prot_por
    (prot_por*100/50).round(2)	  
  end

  # Ingesta de Referencia (IR) de sales en base a 100 g de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de sales en base a 100g de producto
  def ir_sal
    (@sal*100/6).round(2)
  end

  # Ingesta de Referencia (IR) de sales en base a porción de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % de sales en base a porción de producto
  def ir_sal_por
    (sal_por*100/6).round(2)
  end

#TOTALES
 
  # Ingesta de Referencia (IR) total en base a 100g de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % total en base a 100g de producto
  def ir_val_ene
    (val_ene_kj*100/8400).round(2)
  end

  # Ingesta de Referencia (IR) total en base a porción de producto
  #
  # @author Fernando González Petit
  # 
  # @public
  #
  # @return [float] Ingesta de Referencia % total en base a porción de producto
  def ir_val_ene_por
    (val_ene_por_kj*100/8400).round(2)
  end
  
  # Método que proporciona una salida formateada de los contenidos de la etiqueta por orden
  #
  # @author Fernando González Petit
  #
  # @public
  #
  # @return [String] Etiqueta visible
  def to_s
    "-----------------------------------------------------------------------------\n" +
			    "            | Por 100g/ml | IR por 100g/ml | Porcion de " + g_porcion.to_s + " g | IR porcion\n" +
			    "Val.Ene kJ  | " + val_ene_kj.to_s + "  | " + ir_val_ene.to_s + "   | " + val_ene_por_kj.to_s + "   | " + ir_val_ene_por.to_s + "\n" +
			    "        kcal| " + val_ene_kcal.to_s + "   |        | " + val_ene_por_kcal.to_s + "   |       \n" + 
			    "Grasas      | " + @g.to_s + "     | " + ir_gras.to_s + "   | " + gras_por.to_s + "     | " +  ir_gras_por.to_s + " \n" +
			    " -Saturadas | " + @sat.to_s + "     | " + ir_gsat.to_s + "    | " + gsat_por.to_s + "     | " + ir_gsat_por.to_s + " \n" +
			    " -Monosat.  | " + @msat.to_s + "     |        | " + msat_por.to_s + "     | \n" +
			    " -Polisat.  | " + @psat.to_s + "     |        | " + psat_por.to_s + "     | \n" + 
			    " Hidratos   | " + @hid.to_s + "     | " + ir_hidr.to_s + "   | " + hidr_por.to_s + "     | " + ir_hidr_por.to_s + "\n" +
			    " -Azucares  | " + @a.to_s + "     | " + ir_a.to_s + "   | " + a_por.to_s + "     | " + ir_a_por.to_s + "\n" +
			    " -Polialc.  | " + @palc.to_s + "       |        | " + polia_por.to_s + "       | \n" +
			    " -Almid.    | " + @alm.to_s + "     |        | " + alm_por.to_s + "     | \n" +
			    " Fibra alim | " + @fib.to_s + "       |        | " + fib_por.to_s + "       | \n" +
			    " Proteinas  | " + @pr.to_s + "     | " + ir_prot.to_s + "    | " + prot_por.to_s + "     | " + ir_prot_por.to_s + "\n" +
			    " Sales      | " + @sal.to_s + "    | " + ir_sal.to_s + "   | " + sal_por.to_s + "    | " + ir_sal_por.to_s + "\n" +
			    " Vit/Min    | " + @vit.to_s + "/" + min.to_s + "   |       |         | \n"
  end

  # Sobrecarga del operador suma para etiquetas
  #
  # @author Fernando González Petit
  #
  # @public
  def +(anOther)
	  (self.val_ene_kcal + anOther.val_ene_kcal).round(2)
  end


end

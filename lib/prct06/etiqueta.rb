class Etiqueta
  attr_reader :name, :cant, :npor, :g, :sat, :msat, :psat, :hid, :a, :palc, :alm, :fib, :pr, :sal, :vit, :min

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

#CALCULO DE VALORES ENERGETICOS BASE 100g

  def val_gras_kj
    (@g * 37).round(2) 
  end

  def val_gras_kcal
    (@g * 9).round(2)	  
  end

  def val_hidr_kj
    (@hid * 17).round(2)	  
  end

  def val_hidr_kcal
    (@hid * 4).round(2)	  
  end

  def val_fib_kj
    (@fib * 8).round(2)
  end

  def val_fib_kcal
    (@fib * 2).round(2)	  
  end

  def val_prot_kj
    (@pr * 17).round(2)
  end

  def val_prot_kcal
    (@pr * 4).round(2)
  end

  def val_sal_kj
    (@sal * 25).round(2)	  
  end

  def val_sal_kcal
    (@sal * 6).round(2)
  end

  def val_ene_kj
    val_gras_kj + val_hidr_kj + val_fib_kj + val_prot_kj + val_sal_kj	  
  end

  def val_ene_kcal
    val_gras_kcal + val_hidr_kcal + val_fib_kcal + val_prot_kcal + val_sal_kcal  
  end

#CALCULOS PARA PORCIONES: MASA Y VAL. ENERGETICO  

  def g_porcion
    (@cant/@npor).round(2)
  end

  def gras_por
    (g_porcion*@g/100).round(2)
  end
 
  def gsat_por
    (g_porcion*@sat/100).round(2)
  end 

  def msat_por
    (g_porcion*@msat/100).round(2)
  end

  def psat_por
    (g_porcion*@psat/100).round(2)
  end

  def hidr_por
    (g_porcion*@hid/100).round(2)
  end

  def a_por
    (g_porcion*@a/100).round(2)
  end
  
  def polia_por
    (g_porcion*@palc/100).round(2)
  end

  def alm_por
    (g_porcion*@alm/100).round(2)
  end

  def fib_por
    (g_porcion*@fib/100).round(2)
  end

  def prot_por
    (g_porcion*@pr/100).round(2)
  end

  def sal_por
    (g_porcion*@sal/100).round(2)
  end

  def vit_por
    (g_porcion*@vit/100).round(2)
  end

  def min_por
    (g_porcion*@min/100).round(2)
  end

  def gras_por_kj
    (gras_por*37).round(2)
  end

  def gras_por_kcal
    (gras_por*9).round(2)
  end

  def hidr_por_kj
    (hidr_por*17).round(2)
  end

  def hidr_por_kcal
    (hidr_por*4).round(2)
  end

  def fib_por_kj
    (fib_por*8).round(2)
  end

  def fib_por_kcal
    (fib_por*2).round(2)
  end

  def prot_por_kj
    (prot_por*17).round(2)	  
  end

  def prot_por_kcal
    (prot_por*4).round(2)	  
  end

  def sal_por_kj
    (sal_por*25).round(2)
  end

  def sal_por_kcal
    (sal_por*6).round(2)	  
  end

  def val_ene_por_kj
    (gras_por_kj + hidr_por_kj + fib_por_kj + prot_por_kj + sal_por_kj).round(2)
  end

  def val_ene_por_kcal
    (gras_por_kcal + hidr_por_kcal + fib_por_kcal + prot_por_kcal + sal_por_kcal).round(2)
  end

#CALCULO DE %IR 100g Y PORCIONES

  def ir_gras
    (@g*100/70).round(2)
  end

  def ir_gras_por
    (gras_por*100/70).round(2)
  end 

  def ir_gsat
    (@sat*100/20).round(2)
  end

  def ir_gsat_por
    (gsat_por*100/20).round(2)
  end

  def ir_hidr
    (@hid*100/260).round(2)
  end

  def ir_hidr_por
    (hidr_por*100/260).round(2) 
  end

  def ir_a
    (@a*100/90).round(2)
  end

  def ir_a_por
    (a_por*100/90).round(2)
  end

  def ir_prot
    (@pr*100/50).round(2)
  end

  def ir_prot_por
    (prot_por*100/50).round(2)	  
  end

  def ir_sal
    (@sal*100/6).round(2)
  end

  def ir_sal_por
    (sal_por*100/6).round(2)
  end

#TOTALES
 
  def ir_val_ene
    (val_ene_kj*100/8400).round(2)
  end

  def ir_val_ene_por
    (val_ene_por_kj*100/8400).round(2)
  end

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
 
end

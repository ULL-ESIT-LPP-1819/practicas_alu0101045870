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

  def g_porcion
    (@cant/@npor).round(2)
  end

  def val_ene_por_kj
    (val_ene_kj/@npor).round(2)
  end

  def val_ene_por_kcal
    (val_ene_kcal/@npor).round(2)
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

end

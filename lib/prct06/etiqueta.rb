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
    (@g * 37).truncate(2) 
  end

  def val_gras_kcal
    (@g * 9).truncate(2)	  
  end

  def val_hidr_kj
    (@hid * 17).truncate(2)	  
  end

  def val_hidr_kcal
    (@hid * 4).truncate(2)	  
  end

  def val_fib_kj
    (@fib * 8).truncate(2)
  end

  def val_fib_kcal
    (@fib * 2).truncate(2)	  
  end

  def val_prot_kj
    (@pr * 17).truncate(2)
  end

  def val_prot_kcal
    (@pr * 4).truncate(2)
  end

  def val_sal_kj
    (@sal * 25).truncate(2)	  
  end

  def val_sal_kcal
    (@sal * 6).truncate(2)
  end

  def val_ene_kj
    val_gras_kj + val_hidr_kj + val_fib_kj + val_prot_kj + val_sal_kj	  
  end

  def val_ene_kcal
    val_gras_kcal + val_hidr_kcal + val_fib_kcal + val_prot_kcal + val_sal_kcal  
  end

end

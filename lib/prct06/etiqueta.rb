class Etiqueta
  attr_reader :name, :cant, :npor, :g, :sat, :msat, :psat, :hid, :a, :palc, :alm, :fib, :pr, :sal, :vit, :min

  def initialize(n,cant,npor,g,s,ms,ps,h,a,pa,al,fib,p,sal,vit,min)
    @name = n    
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
  end


end

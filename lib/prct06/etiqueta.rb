class Etiqueta
  attr_reader :name, :g, :sat, :msat, :psat, :hid, :a, :palc, :alm, :fib, :pr, :sal

  def initialize(n,g,s,ms,ps,h,a,pa,al,fib,p,sal)
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

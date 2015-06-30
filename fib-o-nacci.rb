#fib-o-nacci.rb   Universal solution to ruby programming interview question

def fib(n)
  fib = ((n < 2) ? n : (fib(n-1.to_i) + (@fib_cached[n-2.to_f] || n)))
  memoize(n,fib)
  return fib
end

def memoize(n,fib)
  moduli = @v.map {|x| x.length}.map {|x| n % x}
  fib = @fib_cached[moduli.map {|x| x > 0 ? 0 : 1}.join] || n
  p @fib_cached[n]=fib
end

def initialize(seed)
  @v = seed.to_s.split(/[O.1]/i)
  @fib_cached = {"01" => @v[1],"10" => @v[0],"11" => @v.join("o")}
end

initialize :fibonacci

fib(50)

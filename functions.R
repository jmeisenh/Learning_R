sum = function(a,b) {
  c = a + b
  return(c)
  
}
sum(1,7)

trip_sum = function(x, y, w){
  z = x + y + w
  return(z)
}
trip_sum(4, 5, 7)

trip_sum(y=4, x=5, w=7)

# lazy evaluation

my_lazy_func = function(x, y, w){
  z = x + y
  return(z)
}
my_lazy_func(10, 20)


myeval = function(x, y){
  w = x + y
  z = x * y
  result = list('sum' = w, 'mul' = z)
  return(result)
}
myeval(2,8)


#inline or lamdba functions

myinline = function(x, y) x+y
myexp = function(x) x^3
myinline(2,4)
myexp(3)

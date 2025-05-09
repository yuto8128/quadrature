import Pkg
Pkg.activate(".")
using QuadGK

integral, err = quadgk(x -> sqrt(1-x^2),0,1)
print(integral, err)
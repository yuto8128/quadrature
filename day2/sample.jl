import Pkg
Pkg.activate(".")
using QuadGK

integral, err = quadgk(x -> sqrt(1-x^2),-1,1)
print(integral,",", err)
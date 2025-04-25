import Pkg
Pkg.activate(".")
using FastGaussQuadrature, LinearAlgebra
using Plots

list = []
f(x) = sqrt(1-x^2)
err_list = []
x_list = [i*10 for i in 1:20]

for i in 1:20
    x,w = gausslegendre(i*10)
    y = dot(w,f.(x))
    push!(list,y)
end

for i in 1:20
    push!(err_list,list[i]-π/2.0)
end

gr()
p = plot(x_list,err_list,st=:scatter,yscale=:log10)
display(p)
gui()
savefig(p, "hogehoge.pdf")

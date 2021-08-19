# Operadores Matemáticos

# def soma(n1, n2)
#     puts n1 + n2
# end

# def subtrai(n1, n2)
#     puts n1 - n2
# end

# def multiplica(n1, n2)
#     puts n1 * n2
# end

# def divide(n1, n2)
#     resultado = (n1.to_f / n2.to_f).round(2)
#     puts resultado
#     puts resultado.class
# end

# divide(10,3)

# Operadores de Comparação

def maior_que(v1, v2)
    puts "Maior que: #{v1 > v2}"  
end
# retorna true porque 10 é maior que 5
maior_que(10, 5)

################################################################
def maior_ou_igual_que(v1, v2)
    puts "Maior ou igual que: #{v1 >= v2}" 
end
# Retorna true porque 10 é igual a 10
maior_ou_igual_que(10, 10)

# Retorna true, porque 15 é maior que 10
maior_ou_igual_que(15, 10)

################################################################

def menor_ou_igual_que(v1, v2)
    puts "Maior ou igual que: #{v1 <= v2}" 
end

# Retorna true, porque 5 é igual a 5
menor_ou_igual_que(5, 5)

#Retorna false, porque 10 não é menor que 5
menor_ou_igual_que(10, 5)

################################################################

def igual (v1, v2)
    puts "Igual que: #{v1 == v2}"
end

# Deve retornar true, porque 10 é de fato igual a 10
igual(10, 10)

# Deve retornar false, porque mesmo os valores sendo 10, são de tipos diferentes
igual(10, "10")


################################################################

def diferentes(v1, v2)
    puts "Diferentes que: #{v1 != v2}"
end

diferentes(10, 5)

print "Digite seu nome: "
nome = gets.chomp
print "Digite a sua idade: "
idade = gets.chomp.to_i

if (idade >= 18) 
    puts "Parabéns #{nome}, você pode tirar CNH."
elsif (idade >= 7)
    puts "Sinto Muito!, você só tem #{idade} anos\nMelhor Andar de Bicicleta."
else 
    puts "Sinto Muito!, você só tem #{idade} anos\nMuito jovem continue de triciclo."
end
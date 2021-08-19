# i = 1

# 5.times do
#     puts "Executando o times #{i}"
#     i++
# end

bandas = ["Aerosmith", "So Pra Contraria","Claudinho e Buchecha","Gun`n Roses"]

# i = 0
# bandas.size.times do
#     puts bandas[i]
#     i = i + 1
# end

bandas.each do |banda|
    puts banda
end
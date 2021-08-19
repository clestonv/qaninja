bandas = ["AC/DC", "Black Sabbath", "Queen", "Os Travessos"]

bandas.push("Bon Jovi")

bandas.delete("Queen")

pagode = bandas.find { | item | item.include?("Bon Jovi") }

puts pagode


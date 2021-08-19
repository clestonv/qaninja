# Name, marca, modelo, cor, quantidade de portas etc...
# Ligas, businar, parar, etc..

# Uma classe é um objeto que tem caracteristicas e funções

class Veiculo 
    attr_accessor :nome, :cor, :marca

    def initialize(nome, marca)
        @nome = nome
        @marca = marca
    end

    def define_cor(cor)
        @cor = cor
    end
end

class Carro < Veiculo
    def ligar
        	puts "O #{@nome} está pronto para iniciar o trajeto"
    end

    def dirigir
        puts "O #{@nome} está iniciando o trajeto"
    end
end

class Moto < Veiculo
    def ligar
        	puts "A #{@nome} está pronto para iniciar o trajeto"
    end

    def pilotar
        puts "A #{@nome} está iniciando o trajeto"
    end
end

chevete = Carro.new("Chevete", "GM")
chevete.ligar
chevete.dirigir
chevete.define_cor("Bege")

fusca = Carro.new("Fusca", "VW")
fusca.ligar
fusca.dirigir
fusca.define_cor("Azul")

cg = Moto.new("CG","Honda")
cg.ligar
cg.pilotar
cg.define_cor("Verde")
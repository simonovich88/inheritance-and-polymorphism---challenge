module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end

end
    
module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre=nombre
    end
end

class Ave<Animal
end

class Mamifero<Animal
end

class Insecto<Animal
end

class Pinguino<Ave
    include Habilidades::Nadador, Habilidades::Caminante,
    Alimentacion::Carnivoro
end

class Paloma<Ave
    include Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Carnivoro

end

class Pato<Ave
    include Habilidades::Nadador, Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Carnivoro
end

class Perro<Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end

class Gato<Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end

class Vaca<Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end

class Mosca<Insecto
    include Habilidades::Volador, Habilidades::Caminante, 
    Alimentacion::Carnivoro, Alimentacion::Herbivoro
end

class Mariposa<Insecto
    include Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Herbivoro
end

class Abeja<Insecto
    include Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Herbivoro
end

#print Perro.new("hugo").inspect

#Pinguino
pinguino = Pinguino.new("Pinguino de Humboldt") 
puts pinguino.nombre 
puts "Habilidades" 
puts pinguino.caminar 
puts pinguino.nadar 
puts pinguino.sumergir 
puts "Alimentacion" 
puts pinguino.comer 
puts "\n"

#Paloma 
paloma = Paloma.new("Paloma Mami") 
puts paloma.nombre 
puts "Habilidades" 
puts paloma.volar 
puts paloma.aterrizar 
puts "Alimentacion" 
puts paloma.comer 
puts "\n"

#Pato 
pato = Pato.new("Pato Yañez") 
puts pato.nombre 
puts "Habilidades" 
puts pato.caminar 
puts pato.nadar 
puts "Alimentacion" 
puts pato.comer 
puts "\n"

#Perro 
perro = Perro.new("Perro Don Benito") 
puts perro.nombre 
puts "Habilidades" 
puts perro.caminar 
puts "Alimentacion" 
puts perro.comer 
puts "\n"

#Gato 
gato = Gato.new("Gato Juanito") 
puts gato.nombre 
puts "Habilidades" 
puts gato.caminar 
puts "Alimentacion" 
puts gato.comer 
puts "\n"

#Vaca 
vaca = Vaca.new("Vaca lista para la parrilla") 
puts vaca.nombre 
puts "Habilidades" 
puts vaca.caminar 
puts "Alimentacion" 
puts vaca.comer 
puts "\n"

#Mosca 
mosca = Mosca.new("Mosca Juanita") 
puts mosca.nombre 
puts "Habilidades" 
puts mosca.volar 
puts mosca.aterrizar
puts "Alimentacion" 
puts mosca.comer
puts "\n"

#Mariposa 
mariposa = Mariposa.new("Mariposa chilensis") 
puts mariposa.nombre 
puts "Habilidades" 
puts mariposa.volar 
puts mariposa.aterrizar 
puts "Alimentacion" 
puts mariposa.comer 
puts "\n"

#Abeja 
abeja = Abeja.new("Abeja Carolina") 
puts abeja.nombre 
puts "Habilidades" 
puts abeja.volar 
puts abeja.aterrizar 
puts "Alimentacion" 
puts abeja.comer 
puts "\n"


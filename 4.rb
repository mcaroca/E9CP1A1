#propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
class Dog
  def initialize(propiedades)
    @propiedades = propiedades
  end

  def ladrar
    puts "#{@propiedades[:nombre]} está ladrando"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
perro.ladrar
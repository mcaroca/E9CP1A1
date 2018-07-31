class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i 
  end

  def sum_of_all
    return @large + @medium + @small + @xsmall
  end

  def average
    puts "Promedio #{@name} es: #{ self.sum_of_all / 4}"
  end

  def print_new_cat(data)
    file = File.open('nuevo_catalogo.txt', 'a')
    file.puts "#{data.name}, #{data.large}, #{data.medium}, #{data.small}"
    file.close
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each{ |x| x.print_new_cat(x) }
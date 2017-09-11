nombres = %w[Violeta Andino Clemente Javiera Paula Pia Ray]

n1 = nombres.select { |nombre| nombre.length < 6 }
print n1, "\n"

n2 = nombres.map(&:downcase)
print n2, "\n"

n3 = nombres.select { |nombre| nombre[0] == 'P' }
print n3, "\n"

n4 = nombres.map(&:length)
print n4, "\n"

n5 = nombres.map { |nombre| nombre.gsub(/[aeiou]/, '') }
print n5

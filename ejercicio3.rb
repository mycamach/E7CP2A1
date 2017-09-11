def add_person(array)

  puts 'Ingrese nombre'
  name = gets.chomp
  puts 'Ingrese edad (sólo números)'
  age = gets.chomp
  puts 'Ingrese comuna'
  district = gets.chomp
  puts 'Ingrese género (Masculino / Femenino)'
  gender = gets.chomp
  array.push(nombre: name, edad: age.to_i, comuna: district, genero: gender)
  print "Se ha ingresado el usuario: \n #{array}"
  puts
end

def edit_person(people)
  puts 'Ingrese el nombre de la persona'
  name = gets.chomp
  elegido = people.select { |person| person[:nombre] == name }
  people.delete_if { |person| person[:nombre] == name }
  puts 'Estos son los valores actuales:'
  puts elegido
  add_person(people)
end

def delete_person(array)
  puts 'Ingrese el nombre de la persona'
  name = gets.chomp
  array.select { |person| person[:nombre] == name }
  array.delete_if { |person| person[:nombre] == name }
  puts "La persona #{name} ha sido eliminada de la lista."
  print array, "\n"
end

def count_people(array)
  sum = 0
  array.each do |ele|
    if ele.include?(:nombre)
      sum += 1
    end
  end
  puts "Hay #{sum} personas en la lista."
end

def show_district(array)
  array.select { |ele| puts ele[:comuna] }
end
# Falta ver repetidos y mayúsculas y minúsculas

def show_age_range(array)
  array.select do |ele|
    puts ele[:nombre] if ele[:edad] >= 20 && ele[:edad] <= 25
  end
end

def show_ages(array)
  array.select do |ele|
    puts "#{ele[:nombre]} tiene #{ele[:edad]} años."
  end
end

list = [{ nombre: 'Seba', edad: 33, comuna: 'San Miguel', genero: 'Masculino' }]

print list[0], "\n"

puts 'Registro de información'

option = 0

while option

  puts 'Elija opción 1 para ingresar los datos de una persona.'
  puts 'Elija opción 2 para editar los datos de la persona.'
  puts 'Elija opción 3 para eliminar una persona.'
  puts 'Elija opción 4 para mostrar la cantidad de personas ingresadas.'
  puts 'Elija opción 5 para mostrar comunas.'
  puts 'Elija opción 6 para mostrar a las personas entre 20 y 25 años.'
  puts 'Elija opción 7 para mostrar las edades de todas las personas.'
  puts 'Elija opción 8 para mostrar el promedio de edad de las personas.'
  puts 'Elija opción 9 para mostrar dos listas categorizadas por género.'
  puts 'Elija opción 10 para salir.'

  option = gets.to_i

  case option

  when 1
    add_person(list)

  when 2
    edit_person(list)

  when 3
    delete_person(list)

  when 4
    count_people(list)
  when 5
    show_district(list)
  when 6
    show_age_range(list)
  when 7
    show_ages(list)
  when 8
  when 9
  when 10
    puts 'Chau'
	exit
  else
    puts 'Opción inválida, vuelva a ingresar una opción.'
  end
end

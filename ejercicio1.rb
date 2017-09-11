a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

b = a.each.map { |i| i + 1 }

print b, "\n"

c = a.map(&:to_f)
print c, "\n"

d = a.map(&:to_s)
print d, "\n"

e = a.each.reject { |i| i < 5 }
print e, "\n"

f = a.each.select { |i| i < 5 }
print f, "\n"

g = a.inject(0) { |sum, x| sum + x }
print g, "\n"

h = a.group_by(&:even?)
print h, "\n"

i = a.group_by { |num| num > 6 }
print i, "\n"

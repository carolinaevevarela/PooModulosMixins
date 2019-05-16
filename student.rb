module Test
  def result
    (@nota1 + @nota2) * 2
    if result > 4
      puts "Estudiante aprobado"
    else
      puts "Estudiante reprobado"
    end
  end
end

module Attendance
  def student_quantity
    puts Student.quantity
  end
end

class Student
  attr_accessor :nombre, :nota1, :nota2
  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
  def quantity
    @@quantity
  end
end

10.times do Student.new

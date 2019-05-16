module Test
  def result
    result = (@nota1 + @nota2) * 2
    if result > 4
      puts "Estudiante aprobado"
    else
      puts "Estudiante reprobado"
    end
  end
end

module Attendance
  def self.student_quantity
    Student.quantity
  end
end

class Student
  include Test
  extend Attendance
  attr_accessor :nombre, :nota1, :nota2
  @@quantity = 0

  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
  def self.quantity
    @@quantity
  end
end

students = 10.times do Student.new('Kevin').result end
puts "El total de estudiantes es #{students}"
puts "El número de alumnos asistentes es #{Attendance.student_quantity}"

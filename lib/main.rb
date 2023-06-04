require_relative 'aluno.rb'
require_relative 'curso.rb'
require_relative 'craluno.rb'
require_relative'crcurso.rb'
arquivo = File.expand_path('notas.csv', __dir__)

alunos = CrAluno.calcular_cr_aluno(arquivo)
cursos = CrCurso.calcular_cr_curso(arquivo)

#Printando Os CR's

puts "---------- O CR dos alunos ----------"
alunos.each do |aluno|
  puts "#{aluno.matricula} - #{aluno.cr.ceil(2)}"
end
puts "--------------------------------------"

puts "---------- Média de CR dos cursos ----------"
cursos.each do |curso|
  puts "#{curso.curso_id} - #{curso.cr.ceil(2)}"
end
puts "--------------------------------------"

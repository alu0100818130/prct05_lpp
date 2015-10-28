$:.unshift File.dirname(__FILE__) + 'lib'

task :default => :tu

desc "Pruebas unitarias de la clase Fracciones"
task :tu do
  sh "ruby -I. test/frc_test.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/frc_test.rb -n /simple/"
end
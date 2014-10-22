require "bundler/gem_tasks"

task :default=> :spec

desc "Run RSpec code example"
task :spec do
     sh "rspec -I. -Ilib -Ispec spec/spec_preguntas.rb"
end

desc "Generar documentación de las pruebas (HTML)"
task :doc_HTML do
     sh "rspec -I. -Ilib -Ispec spec/spec_preguntas.rb --format html > docs/pruebas/index.html"
end

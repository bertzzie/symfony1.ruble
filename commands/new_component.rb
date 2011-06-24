require 'ruble'

command 'New Component' do |cmd|
  cmd.scope = 'source.php'
  cmd.output = :insert_as_snippet
  cmd.input = :selection, :line
  
  cmd.key_binding = "M1+M3+C"
  
  cmd.invoke do |context|
    input = STDIN.read
    
    dir_name  = 
    file_name = ENV["TM_DIRECTORY"] + '\\..\\templates\\_' + input + '.php'
    File.open(file_name, 'w') do |template_file|
      template_file.puts "A new template for " + input + " component has been created."
    end
  end
end

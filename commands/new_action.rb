require 'ruble'

command 'New Action' do |cmd|
  cmd.scope  = 'source.php'
  cmd.output = :insert_as_snippet
  cmd.input  = :selection, :line
  
  cmd.key_binding = "M1+M3+A"
  
  cmd.invoke do |context|
    input = STDIN.read
    
    file_name = ENV["TM_DIRECTORY"] + '\\..\\templates\\' + input + 'Success.php'
    File.open(file_name, 'w') do |template_file|
      template_file.puts "A new template for " + input + " action has been created."
    end
    
    input = 'public function execute' + input.capitalize + '(sfWebRequest \$request)
{

}'
  end
end

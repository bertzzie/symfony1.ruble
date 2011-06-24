require 'ruble'

bundle do |bundle|
  bundle.display_name = "Symfony1"
  bundle.description  = "Bundle for Symfony1 default and cuustom commands."
  bundle.repository   = ""
  
  bundle.menu 'Symfony1' do |main_menu|
    main_menu.command 'Add Action'
  end
end

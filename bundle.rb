require 'ruble'

bundle do |bundle|
  bundle.display_name = "Symfony1"
  bundle.description  = "Bundle for Symfony1 default and cuustom commands."
  bundle.repository   = "git://github.com/bertzzie/symfony1.ruble.git"
  
  bundle.menu 'Symfony1' do |main_menu|
    main_menu.command 'New Action'
    main_menu.command 'New Component'
  end
end

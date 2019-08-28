Redmine::Plugin.register :sc_autoresp do
  name 'Skycash Auto responder plugin'
  author 'Bartosz Walecki'
  description 'Skycash.com plugin redmine autoresponder'
  version '0.0.1'
  url 'http://ppartner.pro'
  author_url 'https://about.me/bwalecki'
  menu :application_menu, :sc_autoresp, { :controller => 'configuration', :action => 'index' }, :caption => 'SC_Autoresp konfiguracja'
end

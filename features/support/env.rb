require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'rspec'

#configurar capybara para usar com selenium
Capybara.configure do |config|

    config.default_driver = :selenium_chrome # essa configuração é para instanciar o browser com Firefox

    config.app_host = 'https://automacaocombatista.herokuapp.com/' 
end
#configuração de tempo de espera para achar elemento na tela
Capybara.default_max_wait_time = 5
# Testes de aceitação
Os testes são executados utilizando Cucumber e Selenium e escritos utilizando Ruby e framework Capybara. O foco é testar o comportamento do sistema.

## Depêndencias

|  Nome  |  Link  |
| ------ | ------ |
| Ruby + DevKit | https://rubyinstaller.org/downloads/ |
| Google Chrome | https://www.google.com/intl/pt-BR_ALL/chrome/ |
| ChromeDriver | https://chromedriver.storage.googleapis.com/74.0.3729.6/chromedriver_win32.zip |

Instalar corretamente o chromeDriver, conforme link [Configurar ferramentas de teste](http://bit.ly/2FocT2O)


Executar os seguintes comandos

```sh
$ gem install bundle
```
```sh
$ bundle install
```

## Estrutura/Arquitetura
### features
Responsável por todos os cenários levantados até então e escritos em Gherkin.
Estão agrupados pelas funcionalidades que o sistema possui hoje.

### pages
Responsável por ter as informações dos elementos das páginas que o sistema possui. Lá é 
onde encontramos praticamente todos os identificadores de elementos e onde executamos as
ações de mais baixo nível da automação.

### steps
Responsável por ter a execução dos passos dos cenários em Gherkin. É onde possui a amarração
das features com o código que será executado por trás. Possui a execução das ações de automação 
em alto nível.

### Local
As configurações que são feitas para a execução dos cenários de teste começam pelo `env.rb`, que
cria a instância do driver e passa a url que será acessada. 

No `hooks.rb` é onde fazemos a intância das páginas e criamos os metodos de before e after.

É necessário executar este comando para executar os teste:

```sh
$ cucumber
```
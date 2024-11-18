class LoginPage
    include Capybara::DSL  # Inclui os métodos do Capybara
  
    def visita_pagina
        visit 'https://front.serverest.dev/login'
    end

    def preencher_usuario_novo
        login = find('.btn btn-link', text: 'Cadastre-se').click
        find('#nome').set('teste')
        find('#email').set('100@00.com.br')
    end
  
    def preencher_senha
        find('#password').set('00110011')
    end
  
    def clicar_no_botao_cadastrar
        find(text: 'Cadastrar').click
    end

    def valida_texto
        expect(page).to have_content("Logout")
    end

  end
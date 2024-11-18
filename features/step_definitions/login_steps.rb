@login_page = LoginPage.new


  Dado('que eu esteja na tela de Login') do
    @login_page = LoginPage.new
    @login_page.visita_pagina
  end
  
  Quando('eu preencher os dados de novo usuario na plataforma') do
    @login_page = LoginPage.new
    @login_page.preencher_usuario_novo
    @login_page.preencher_senha
  end
  
  Quando('clicar no botao cadastrar') do
    @login_page = LoginPage.new
    @login_page.clicar_no_botao_cadastrar
  end
  
  Entao('terei feito o login com sucesso') do
    @login_page = LoginPage.new
    @login_page.valida_texto
  end
  
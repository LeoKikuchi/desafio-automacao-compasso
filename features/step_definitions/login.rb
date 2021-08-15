Dado('que o acesso ao login') do    
    @login_page.load
end

Quando('submeto meus dados do login') do
    find("#email").set "leonardocoppetti4@gmail.com"
    find("#passwd").set "kodak2409"

    click_button "button ajax_add_to_cart_button btn btn-default"
end

Então('sou redirecionado para a tela de My account') do
    expect(@login_page).to have_css ".addresses-lists"    
end

Quando('submeto meus dados do login sem o email') do    
    find("#passwd").set "kodak2409"
    click_button "SubmitLogin"    
end

Então('vejo a mensagem de alerta: There is 1 error') do
    expect(@login_page).to have_css ".alert-danger"    
end
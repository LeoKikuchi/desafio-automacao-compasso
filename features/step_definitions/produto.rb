Dado("Dado que esteja na tela inicial para compras") do
    @products.load
end

Quando('clico em Add to Cart no produto') do
    click_button "Add to cart"
end

Então('deve adicionar o produto no carrinho') do
    expect(@products).to have_css ".layer_cart"
    expect(@products.products.name.text).to have_content "Faded Short Sleeve T-shirts"
end
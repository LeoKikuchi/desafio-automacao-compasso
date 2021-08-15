Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Quando('informardo um produto não existente {string}') do |string|
  @home_page.search(string) 
end

Então('devem ser retornado mensagem No results were found for your search') do
  expect(@home_page).to have_css ".alert-warning"    
end
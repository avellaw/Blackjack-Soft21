Dado(/^que entra al juego$/) do
  visit '/'
end

Dado(/^ingreso el nombre "([^"]*)"$/) do |nombre|
  fill_in("Jugador", :with => nombre)
end

Entonces(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Cuando(/^da iniciar$/) do
  click_button("Iniciar")
end

Dado(/^no ingreso el nombre$/) do
  expect(page.body).to match /#{texto}/m
end

Cuando(/^da Dar Cartas$/) do
  click_button("Dar Cartas")
end

Entonces(/^muestreme "([^"]*)" y "([^"]*)"$/) do |carta1, carta2|
  fill_in(carta1, :with => carta2)
end
Dado(/^que entra al juego$/) do
  visit '/'
end

Dado(/^ingreso el nombre "([^"]*)"$/) do |nombre|
  fill_in("Jugador", :with => nombre)
end

Entonces(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end


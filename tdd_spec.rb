require 'rspec'
require_relative 'tdd'

describe Citizen do
	let (:commando_frog_name) { 'Commando Frog' }
	it 'calculates tax_liability for different citizens' do
  	expect(Citizen.new().tax_liability).to eq()
  end
end


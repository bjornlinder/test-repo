require 'rspec'
require_relative 'tdd'

describe Citizen do 
  it 'generates Citizen objects from CSV' do
    expect(citizens["Liz Lemon"]).!nil?
  end
  it "returns a person's tax rate when asked for it"
  expect(citizens['Liz_lemon'].tax_rate.type).to eq(Integer)
end





# describe TaxCalculator do
#   it 'reads a csv' do
#     expect(TaxCalculator.new.import_data).nil?
#   end
#   it 'reads a csv' do
#     expect(TaxCalculator.new.import_data).nil?
#   end
#   it 'generates output' do
#     (TaxCalculator.new.display_info.class).should to_eq(String)
#   end
#   it 'generates a row for each row of data in csv'
# end
require 'rspec'
require_relative 'tdd'

describe Citzen 
# bla bla get the info



describe TaxCalc do 
  it 'generates Citizen objects from CSV' do
    puts TaxCalc.new().citizens
    expect(TaxCalc.new().citizens["Liz Lemon"]).!nil?
  end
  it "returns a person's tax rate when asked for it"
 # expect(@citizens['Liz_lemon'].tax_rate.type).to eq(Integer)
 #Do taxes
 #Calculate difference
 #How much is owed
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
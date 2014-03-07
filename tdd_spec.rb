require 'rspec'
require_relative 'tdd'

#describe Citzen 
# bla bla get the info



describe TaxCalc do 
  it 'generates Citizen objects from CSV' do
    expect(TaxCalc.new().citizens["Liz Lemon"])
  end
  it "returns a person's tax rate when asked for it" do
    expect(TaxCalc.new().tax_liability("Liz Lemon")).to eq(39000)
  end
  #annual income
  #tax rate
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
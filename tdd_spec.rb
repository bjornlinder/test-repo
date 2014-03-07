require 'rspec'
require_relative 'tdd'





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


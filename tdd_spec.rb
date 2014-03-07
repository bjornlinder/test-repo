require 'rspec'
require_relative 'tdd'

describe TaxCalc do
	let (:citizens) { 'Johnny Smith' }
  it 'generates Citizen objects from CSV' do
    expect(TaxCalc.new().citizens[citizens])
  end
  let (:citizens) { 'Jane Doe' }
   it 'generates Citizen objects from CSV' do
    expect(TaxCalc.new().citizens[citizens])
  end
   let (:citizens) { 'Liz Lemon' }
   it 'generates Citizen objects from CSV' do
    expect(TaxCalc.new().citizens[citizens])
  end
   let (:citizens) { 'Orson Orsillio' }
   it 'generates Citizen objects from CSV' do
    expect(TaxCalc.new().citizens[citizens])
  end
  let (:citizens) { 'Eric Schmidt' }
   it 'generates Citizen objects from CSV' do
    expect(TaxCalc.new().citizens[citizens])
  end

   # it 'calculates a total of 0 for Eric Schmidt annual income' do
   # 	expect(TaxCalc.new()citizen.annual_income['Eric Schmidt'].to eql(0)
   # end

  let (:citizens) { 'Johnny Smith' }
  it 'generates tax liabilities for each citizen object' do
  	expect(TaxCalc.new().tax_liability(citizens)).to eq(17600)
  end
  let (:citizens) { 'Jane Doe' }
  it 'generates tax liabilities for each citizen object' do
  	expect(TaxCalc.new().tax_liability(citizens)).to eq(26000)
  end
  let (:citizens) { 'Liz Lemon' }
  it 'generates tax liabilities for each citizen object' do
  	expect(TaxCalc.new().tax_liability(citizens)).to eq(39000)
  end
  let (:citizens) { 'Orson Orsillio' }
  it 'generates tax liabilities for each citizen object' do
  	expect(TaxCalc.new().tax_liability(citizens)).to eq(-1600)
  end
  let (:citizens) { 'Eric Schmidt' }
  it 'generates tax liabilities for each citizen object' do
  	expect(TaxCalc.new().tax_liability(citizens)).to eq(15120)
  end

end


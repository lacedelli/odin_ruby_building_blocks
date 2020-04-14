require './caesar'

RSpec.describe 'caesar_cypher' do
	it 'returns a letter shifted by five spaces' do
		expect(caesar_cypher("a", 5)).to eq("f")
	end

	it 'works with negative numbers' do
		expect(caesar_cypher("a", -5)).to eq("v")
	end

	it 'intakes words' do
		expect(caesar_cypher("convenience", 10)).to eq("myxfoxsoxmo")
	end

	it 'works with numbers higher than 100' do
		expect(caesar_cypher("intrinsic", 522)).to eq("kpvtkpuke")
	end

	it 'keeps upper-case letters' do
		expect(caesar_cypher("Animalistic", 13)).to eq("Navznyvfgvp")
	end

	it 'keeps spacing and punctuatuon' do
		expect(caesar_cypher("Et tu, Brute?", 20)).to eq("Yn no, Vlony?")
	end
end

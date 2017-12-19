RSpec.describe Array::Eqq do
	using Array::Eqq

	context "Array#===" do
		it { expect([1, 2] === [1, 2]).to eq true }
		it { expect([1, 2, 3] === [1, 2]).to eq false }
		it { expect([Integer, String] === [1, "homu"]).to eq true }
		it { expect([Integer, String] === [1, "homu", 3]).to eq false }
		it { expect([Integer, String] === ["42", "homu"]).to eq false }
		it { expect([(1..2), (3..4)] === [1, 3]).to eq true }
		it { expect([(1..2), (3..4)] === [1, 3]).to eq true }
	end
end

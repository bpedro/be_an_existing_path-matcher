RSpec.describe BeAnExistingPath::Matcher do
  let(:existing_path) { 'Gemfile' }
  let(:non_existing_path) { 'elifemG' }

  describe '#initialize' do
    context 'when the path exists' do
      subject { existing_path }
      it { is_expected.to be_an_existing_path }
    end

    context 'when the path doesn\'t exist' do
      subject { non_existing_path }
      it { is_expected.not_to be_an_existing_path }
    end
  end
end

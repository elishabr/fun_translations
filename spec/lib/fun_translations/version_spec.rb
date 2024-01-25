RSpec.describe FunTranslations do
  specify '.VERSION' do
    expect(described_class::VERSION).to be_an_instance_of(String)
  end
end

RSpec.describe User, type: :model do
  it { should have_many :restaurants}
  it { is_expected.to have_many :reviewed_restaurants}
  it { is_expected.to have_many(:reviews).dependent(:destroy) }
end

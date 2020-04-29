require 'player'

describe Player do
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:hit_points) }

  it 'has player name and hit points' do
    subject = described_class.new('Jo', 100)
    expect(subject.name).to eq('Jo')
    expect(subject.hit_points).to eq(100)
  end
end

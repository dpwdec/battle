require 'player'

describe Player do
  it 'has player name and hit points' do
    subject = described_class.new('Jo', 100)
    expect(subject.name).to eq('Jo')
    expect(subject.hit_points).to eq(100)
  end
end

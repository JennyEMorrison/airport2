require 'airport'

describe Airport do
  it { is_expected.to respond_to :plane_landing } #.with(1).argument }
  it 'Instructs a plane to land' do
    plane = subject.plane_landing
    expect(plane).to be_landing
  end

  describe ' #taking_off' do
    it { is_expected.to respond_to(:taking_off) }
    it 'Instructs a plane to take off' do
      plane = subject.taking_off
      expect(plane).to be_leaving
    end
  end
end

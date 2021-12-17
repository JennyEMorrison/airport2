require 'airport'

describe Airport do
  it { is_expected.to respond_to :plane_landing }
  it 'recieves landing planes' do
    plane = subject.plane_landing
    expect(plane).to be_landing
  end
end


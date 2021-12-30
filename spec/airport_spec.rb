require 'airport'

describe Airport do
  it { is_expected.to respond_to :plane_landing } #.with(1).argument }
  it 'instructs a plane to land' do
    plane = subject.plane_landing
    expect(plane).to be_landing
  end
    
  it 'ensures that the airport cannot be filled above capacity' do
    over_capacity = Airport::DEFAULT_CAPACITY + 1
    over_capacity.times do
      subject.plane_landing
    end
    expect(subject.count_planes).to eq(Airport::DEFAULT_CAPACITY)
  end 

  describe ' #taking_off' do
    it { is_expected.to respond_to :taking_off  }
    it 'instructs a plane to take off' do
      plane = subject.taking_off
      expect(plane).to be_leaving
    end
  end
end

#it {is_expected.to respond_to(:plane_landing) #.with(1).argument }
  
# describe 'plane_landing'
#   it 'raises an error message when full' do
#     Airport::DEFAULT_CAPACITY.times do
#       subject.plane_landing Plane.new
#     end
#     expect { subject.plane_landing Plane.new }.to raise_error 'Cannot land plane, the airport is full'
#   end
# end

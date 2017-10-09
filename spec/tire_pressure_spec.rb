require 'tire_pressure'

describe Sensor do

  describe 'pop_next_pressure_psi_value' do

    it 'returns a number between 16 and 22' do
      sensor = Sensor.new
      allow(sensor).to receive(:sample_pressure).and_return(4)
      expect(sensor.pop_next_pressure_psi_value).to eq 20
    end
  end
end

class Community
  attr_reader :city, :county, :state, :zip_code
  def initialize(data)
    @city = data[1][:short_name]
    @county = data[2][:short_name]
    @state = data[3][:short_name]
    @zip_code = data[0][:short_name]
  end
end
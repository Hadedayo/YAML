require_relative '../my_ISO_country_data'

describe 'countries' do
  before(:all) do
    @country_data = ISOCountryData.new('./ISO_country_data.yml')
  end

   it "should return 249 as the the file size" do
    expect(@country_data.file_size).to eq (249)
  end

  it "should be an array" do
    expect(@country_data.iso_country_data[0]).to be_kind_of Hash
  end

  it "should return 2 as the number of characters for Code " do
    expect(@country_data.select_random_country_code.length).to eq 2
  end

  it "should return a string for country name" do
    expect(@country_data.select_random_country).to be_kind_of String
  end

  it "should return country name corresponding to country code"  do
    expect(@country_data.return_country_code_from_country_name('Nigeria')).to eq 'NG'
  end

  # it "should return the value of Code as uppercase " do
  #   expect(@country_data.select_random_country_code).to eq @country_data.select_random_country_code.upcase
  # end


end

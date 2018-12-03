require 'yaml'

class ISOCountryData
  attr_accessor :iso_country_data

  def initialize(yaml_file)
    @iso_country_data = YAML.load_file(yaml_file)
  end

  def file_size
    #returns the size of the file we are including
    @iso_country_data.size
  end

  def select_random_country
    #selects
    num = Random.new.rand(@iso_country_data.length)
    @iso_country_data[num]['Name']
  end

  def select_random_country_code
    random_num = Random.new.rand(@iso_country_data.length)
     @iso_country_data[random_num]['Code']
  end

  def return_country_code_from_country_name(country_name)
    @code = ''
    @iso_country_data.each do |name, code|
      if name['Name'] == country_name
        @code = name['Code']
      end
    end
    @code
  end

  def return_country_name_from_country_code(country_code)
    @iso_country_data.each do |name, code|
      if name['Code'] == country_code
        puts name['Name']
      end
    end
  end



end

test = ISOCountryData.new('ISO_country_data.yml')
test.return_country_name_from_country_code('NG')
test.return_country_code_from_country_name('Taiwan')

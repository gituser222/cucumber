require 'httparty'

class Customer

  def initialize(x-env)
    @options = {
        'x-env' => x-env
    }
  end

  def get_request
    puts 'Making a request with header as => '
    puts @options
    response = HTTParty.get('https://reqres.in/api/users?page=2',
                            headers: @options
    )
    puts 'response =', response
  end

end




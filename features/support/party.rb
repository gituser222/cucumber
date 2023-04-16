require 'httparty'

class Customer

  def initialize(xenv)
    @options = {
        'xenv' => xenv
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




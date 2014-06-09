require 'net/https'
require 'uri'

module Compropago
  class Client

  	BASE_URI = 'https://api.compropago.com/v1'

  	def initialize(api_key='', options={})
  	  @api_key = api_key

  	  #defaults
  	  options[:base_uri] ||= BASE_URI
  	  @base_uri = options[:base_uri]	
  	end

  	def create_charge product_price, product_name, customer_name, customer_email, payment_type, product_id=nil, image_url=nil
  	  
  	  #defaults = {
  	  #  "product_id" => nil,
  	  #  "image_url" => nil
  	  #}

  	  #options = defaults.merge(options)

  	  uri = URI.parse(BASE_URI+'/charges')
  	  http = Net::HTTP.new(uri.host, uri.port)
  	  http.use_ssl = true
  	  request = Net::HTTP::Post.new(uri.request_uri)
  	  request.basic_auth @api_key, ''
  	  params = { "product_price" => product_price,
  	  			 "product_name" => product_name,
  	  			 "customer_name" => customer_name,
  	  			 "customer_email" => customer_email,
  	  			 "payment_type" => payment_type,
  	  			 "product_id" => product_id,
  	  			 "image_url" => image_url,
  	  			 "product_id" => product_id,
  	    		 "image_url" => image_url
  	  		  }
  	  request.set_form_data(params)
  	  response = http.request(request)
  	  #render :json => response.body
  	end
  end
end
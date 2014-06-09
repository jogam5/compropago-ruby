# Compropago

This gem helps you integrate ComproPago's API to your ruby app.

## Installation

Add this line to your application's Gemfile:

    gem 'compropago'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compropago

## Usage

### Authentication

We encourage you to set your API keys in an environment variable rather than hardcoding your API keys instead.

    compropago = ComproPago::Client.new(ENV['COMPROPAGO_API_KEY'])

Once you have created an instance, you can call the methods described in the <a href="http://compropago.com/documentacion/api">api reference</a> on it.


## Examples

### Create a charge

Creating a charge using the required params.
	
	# create_charge product_price, product_name, customer_name, customer_email, payment_type

    compropago.create_charge 3150.0, 'iphone5s', 'Irma Sanz', 'no-replay@compropago.com', 'OXXO'

Creating a charge using both the required and the optional params <code>product_id</code> and <code>image_url</code>.

    # create_charge product_price, product_name, customer_name, customer_email, payment_type, product_id, image_url

    compropago.create_charge 3150.0, 'iphone5s', 'Irma Sanz', 'no-replay@email.com', 'OXXO', '5ku8g', 'image.jpg'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Welcome to Ruby SDK for Tradenity ecommerce API
====================================================

This is the official Ruby SDK for [Tradenity ecommerce API](https://www.tradenity.com).

## Prerequisites

To use the Tradenity SDK, you must have:

-  Working Ruby development environment (currently v1.9.3 and v2.4.x are supported).
-  Active account in [Tradenity](http://www.tradenity.com)


## Installation

You can install the Ruby SDK using the standard `gem` tool.

`gem install tradenity`


## Create store and load sample data

- If you are not yet registered, create a new [Tradenity account](https://www.tradenity.com).
- After you login to your account, go to [Getting started](https://admin.tradenity.com/admin/getting_started) page and create new store. you may click "Create sample store" to create a new store and populate it with sample data
- From the administration side menu, choose "Developers" > "API Keys", you can use the default key or generate a new one.


## Setup your credentials

First of all, you have to get API keys for your store, you can find it in your store `Edit` page.
To get there navigate to the stores list page, click on the `Edit` button next to your store name, scroll down till you find the `API Keys` section.


## Initialize the library

With the API key in hand, you can initialize the Tradenity client.
Tradenity client needs the API key and an instance of AuthTokenHolder
which is an object that makes Tradenity session integrates with the web framework's session mechanism.
The SDK provide implementation for Flask and Django. It's easy to implement your own for other frameworks, It is a simple 3 method interface.



```ruby

require 'Tradenity'

Tradenity.configure do |config|
  config.username = "sk_xxxxxxxxxxxxxxxxxxxxxxxxx"
  config.password = ""
  config.session_token_holder = Tradenity::SessionTokenHolder.new
end

```
Make sure to replace the api keys with the ones for your store, otherwise you will get authentication error

## Make your First call

The Tradenity SDK is organized into a group of model entitiy classes that corresponds to the REST API's resources, each encapsulate the operation for a specific entity model,
for example to perform operations related to the `Brand` resource you can use the corresponding `tradenity.resources.Brand` class.



Now, just call any method in your code.

```ruby

@brand = Brand.find_by_id("1243-9786786-jhgjtu-789s6i")

```


## Tutorials and sample applications

We provide 2 sample applications, actually it is the same application implemented using 2 frameworks: `Rails`, and `Sinatra`.

[Camera store sample application live demo](http://camera-store-sample.tradenity.com/)

You can find the code at github:

[Camera store for rails code](https://github.com/tradenity/camerastore-ruby-rails-sample).

[Camera store for sinatra code](https://github.com/tradenity/camerastore-ruby-sinatra-sample).

We also provide a detailed explanation of the code of these sample applications in the form of a step by step tutorials:

[Camera store for rails tutorial](http://docs.tradenity.com/kb/tutorials/ruby/rails).

[Camera store for sinatra tutorial](http://docs.tradenity.com/kb/tutorials/ruby/sinatra).


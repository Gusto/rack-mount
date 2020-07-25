require_relative '../test_helper'

class RailsDraftApiTest < Test::Unit::TestCase
  include TestHelper
  include BasicRecognitionTests

  def setup
    routes = Rack::Mount::RouteSet.new
    routes.new_draw do |map|
      resources :people

      match '', :to => 'homepage'

      match 'geocode/:postalcode',  :to => 'geocode#show', :as => :geocode, :constraints => { :postalcode => /\d{5}(-\d{4})?/ }
      match 'geocode2/:postalcode', :to => 'geocode#show', :as => :geocode, :constraints => { :postalcode => /\d{5}(-\d{4})?/ }

      match 'foo', :to => 'foo#index'
      match 'foo/bar', :to => 'foo_bar#index'
      match '/baz', :to => 'baz#index'

      match 'files/*files', :to => 'files#index'

      match ':controller/:action/:id'
      match ':controller/:action/:id.:format'
    end
    @app = routes
  end
end

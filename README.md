# Rack::Mount [![Build status](https://badge.buildkite.com/74f2b33c449ac756107e1e2503cc5903dc46db9ced6bddcb1a.svg)](https://buildkite.com/gusto/rack-mount)

A stackable dynamic tree based Rack router.

`Rack::Mount` supports Rack's Cascade style of trying several routes until it finds one that is not a 404. This allows multiple routes to be nested or stacked on top of each other. Since the application endpoint can trigger the router to continue matching, middleware can be used to add arbitrary conditions to any route. This allows you to route based on other request attributes, session information, or even data dynamically pulled pulled from a database.

## Usage

Currently, `Rack::Mount` supports the classic Rails router mapping API. (Support is planned for the Merb router API and the new Rails 3.0 API)

```
  require 'rack/mount'
  Routes = Rack::Mount::RouteSet.new

  Routes.draw do |map|
    map.connect 'products', :app => ListProducts
    map.connect 'products/:id', :app => ShowProduct
  end

  run Routes
```
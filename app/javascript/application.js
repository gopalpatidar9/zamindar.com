// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "./channels"
//= require cable
//= require_self
//= require_tree ./channels
//= require message_channel
//= require_tree .

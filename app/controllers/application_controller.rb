class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    User.first
    User.last
    Person.first
    Person.last
    render html: '<h1>Test</h1>'.html_safe
  end
end

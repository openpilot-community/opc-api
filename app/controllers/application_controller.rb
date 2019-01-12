class String
  def is_i?
    !!(self =~ /\A[-+]?[0-9]+\z/)
  end
end
class ApplicationController < ActionController::API
  include Graphiti::Rails
  include Graphiti::Responders

  register_exception Graphiti::Errors::RecordNotFound,
    status: 404

  rescue_from Exception do |e|
    handle_exception(e)
  end
end
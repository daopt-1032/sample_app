class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound do |exception|
    logger.error "RecordNotFound: #{exception.message}"
    render_404
  end

  def hello
    render html: "Hello word!"
  end

  def render_404
    render file: "public/404.html", status: :not_found, layout: false
  end
end

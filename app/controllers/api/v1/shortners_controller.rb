class Api::V1::ShortnersController < BaseApiController
  include ShortnerCommonCode

  def create
    @shortner = Shortner.new(url: params[:url])
    if @shortner.save
      shorten_url
      render json: {success: true, message: 'shortning of url successfull.', object: @shortner}
    else
      render json: {success: false, message: 'shortning of url failed.', errors: @shortner.errors}
    end
  end

  def expand_url
    short_url_method
    if @expand_url
      render json: {success: true, message: 'expanding of tinyurl successfull.', url: @expand_url}
    else
      render json: {success: true, message: 'expanding of tinyurl failed.', url: nil}
    end
  end
end
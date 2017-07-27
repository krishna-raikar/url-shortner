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
end
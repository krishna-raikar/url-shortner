class ShortnersController < ApplicationController
  before_action :set_shortner, only: [:show, :edit, :update, :destroy]
  include ShortnerCommonCode

  # GET /shortners
  # GET /shortners.json
  def index
    @shortners = Shortner.order('created_at desc')
  end

  # GET /shortners/1
  # GET /shortners/1.json
  def show
  end

  # GET /shortners/new
  def new
    @shortner = Shortner.new
  end

  # GET /shortners/1/edit
  def edit
  end

  # POST /shortners
  # POST /shortners.json
  def create
    create_obj
  end

  # PATCH/PUT /shortners/1
  # PATCH/PUT /shortners/1.json
  def update
    update_obj
  end

  # DELETE /shortners/1
  # DELETE /shortners/1.json
  def destroy
    destroy_obj
  end

  ## This method will expand the shortned url and open the original link
  # takes shortened url as input
  # open original link
  def short_url
    short_url_method
  end
end

class TranslationsController < ApplicationController
  def show
    translation = Translation.convert_text(params[:source], params[:target], params[:q])
    render json: translation
  end
end

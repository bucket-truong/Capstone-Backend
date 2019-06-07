class TranslationsController < ApplicationController
  def show
    translation = Translation.convert_text(safe_params[:source], safe_params[:target], safe_params[:q])
    render json: JSON.parse(translation)
  end

  def safe_params
    params.permit(:source, :target, :q)
  end
end

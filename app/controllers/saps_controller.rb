class SapsController < ApplicationController
  def create
    extract = Sap.extract_text(params[:file])
    pay = JSON.parse(extract)
    payStr = pay["predictions"][0]
    render json: { "predictions": payStr.gsub("\n", " ") }
  end
  private

  def safe_params
    params.permit(:file)
  end
end

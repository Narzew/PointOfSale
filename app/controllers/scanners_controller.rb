# frozen_string_literal: true

class ScannersController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def show; end

  def search
    code = params[:code]
    render json: { data: Product.find_by(code: code) }
  end

  def input_params
    params.permit(:code)
  end

  def record_not_found
    render plain 'Record not found.'
  end
end

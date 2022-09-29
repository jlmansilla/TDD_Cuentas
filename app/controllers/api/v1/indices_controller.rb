class Api::V1::IndicesController < ApplicationController
  before_action :set_api_v1_index, only: %i[ show update destroy ]

  # GET /api/v1/indices
  def index
    @api_v1_indices = Api::V1::Index.all

    render json: @api_v1_indices
  end

  # GET /api/v1/indices/1
  def show
    render json: @api_v1_index
  end

  # POST /api/v1/indices
  def create
    @api_v1_index = Api::V1::Index.new(api_v1_index_params)

    if @api_v1_index.save
      render json: @api_v1_index, status: :created, location: @api_v1_index
    else
      render json: @api_v1_index.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/indices/1
  def update
    if @api_v1_index.update(api_v1_index_params)
      render json: @api_v1_index
    else
      render json: @api_v1_index.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/indices/1
  def destroy
    @api_v1_index.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_index
      @api_v1_index = Api::V1::Index.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_index_params
      params.fetch(:api_v1_index, {})
    end
end

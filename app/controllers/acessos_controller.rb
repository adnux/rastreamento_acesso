class AcessosController < ApplicationController
  before_action :set_acesso, only: [:show, :update, :destroy]

  def nothing
    render text: '', content_type: 'text/plain'
  end

  # GET /acessos
  def index
    @acessos = Acesso.all

    render json: @acessos
  end

  # GET /acessos/1
  def show
    render json: @acesso
  end

  # POST /acessos
  def create
    @acesso = Acesso.new(acesso_params)

    if @acesso.save
      render json: @acesso, status: :created, location: @acesso
    else
      render json: @acesso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /acessos/1
  def update
    if @acesso.update(acesso_params)
      render json: @acesso
    else
      render json: @acesso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /acessos/1
  def destroy
    @acesso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acesso
      @acesso = Acesso.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def acesso_params
      params.require(:acesso).permit(:id, :key, :url, :date)
    end
end

class ContatosController < ApplicationController
  before_action :set_contato, only: [:show, :update, :destroy]

  # GET /contatos
  def index
    @contatos = Contato.all

    render json: @contatos
  end

  # GET /contatos/1
  def show
    render json: @contato
  end

  # POST /contatos
  def create
    @contato = Contato.new(contato_params)

    if @contato.save
      render json: @contato, status: :created, location: @contato
    else
      render json: @contato.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contatos/1
  def update
    if @contato.update(contato_params)
      render json: @contato
    else
      render json: @contato.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contatos/1
  def destroy
    @contato.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contato
      @contato = Contato.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contato_params
      params.require(:contato).permit(:email)
    end
end

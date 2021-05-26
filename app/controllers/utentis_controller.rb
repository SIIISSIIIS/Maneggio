class UtentisController < ApplicationController
  before_action :set_utenti, only: %i[ show edit update destroy ]

  # GET /utentis or /utentis.json
  def index
    @utentis = Utenti.all
  end

  # GET /utentis/1 or /utentis/1.json
  def show
  end

  # GET /utentis/new
  def new
    @utenti = Utenti.new
  end

  # GET /utentis/1/edit
  def edit
  end

  # POST /utentis or /utentis.json
  def create
    @utenti = Utenti.new(utenti_params)

    respond_to do |format|
      if @utenti.save
        format.html { redirect_to @utenti, notice: "UTENTE CREATI" }
        format.json { render :show, status: :created, location: @utenti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @utenti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utentis/1 or /utentis/1.json
  def update
    respond_to do |format|
      if @utenti.update(utenti_params)
        format.html { redirect_to @utenti, notice: "UTENTE AGGIORNATO" }
        format.json { render :show, status: :ok, location: @utenti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @utenti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utentis/1 or /utentis/1.json
  def destroy
    @utenti.destroy
    respond_to do |format|
      format.html { redirect_to utentis_url, notice: "UTENTE ELIMINATO" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utenti
      @utenti = Utenti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def utenti_params
      params.require(:utenti).permit(:cognome, :nome, :email, :numero, :annotazioni)
    end
end

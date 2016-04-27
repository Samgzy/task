class TachesController < ApplicationController
 def index
    @tache = Tache.all
  end

  def new
    @tache = Tache.new
  end

  def create
    @tache = Tache.new(tache_params)

    if @tache.save
      redirect_to taches_path, notice: "Enregistré" and return
    end
    render 'new'
  end

  def edit
    @tache = Tache.find(params[:id])
  end

  def update
    @tache = Tache.find(params[:id])

    if @tache.update_attributes(tache_params)
      redirect_to taches_path, notice: "Frais mis à jour!" and return
    end

    render 'edit'
  end

  def destroy
    @tache = Tache.find(params[:id])
    @tache.destroy

    redirect_to taches_path, notice: "Frais supprimé!" and return
  end
private
  def tache_params
    params.require(:tache).permit(:nom, :societe, :montant, :date, :notes)
  end
end

class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def show
    @weapon = Weapon.find(params[:id])
    respond_to do |format|
      format.html # Renderiza o template show.html.erb
      format.json { render json: @weapon } # Responde com JSON
    end
  end


  def create
    @weapon = Weapon.create(weapon_params)
    redirect_to weapons_path, notice: 'Weapon was created successfully'
  end
  
  def destroy
    @weapon = Weapon.find(params[:id])
    @weapon.destroy
    redirect_to weapons_path, notice: 'Weapon was successfully destroyed.'
  end

 

  private
    def weapon_params
      params.require(:weapon).permit(:name, :description, :power_base, :power_step, :level)
    end
end

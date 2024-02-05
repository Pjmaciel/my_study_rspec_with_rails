class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def create
    @Weapon = Weapon.create(Weapon_params)
    redirect_to weapons_path, notice: 'Weapon was created successfully'
  end

  def destory
    @weapon = Weapon.find(params[:id])
    @weapon.destory
    redirect_to weapons_path, notice: 'Weapon was successfully destroyed.'
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  private
    def Weapon_params
      param.require(:Weapon).permit(:name, :description, :power_base, :power_step, :level)
    end

end

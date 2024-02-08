class EnemiesController < ApplicationController
  def index
    @enemies = Enemy.all
    respond_to do |format|
      format.html
      format.json { render json: @enemies }
    end
  end

  def create
    @enemy = Enemy.create(enemy_params)
    redirect_to enemies_path, notice: 'Enemy was creates successfully'    
  end
  
  
  def show
    @enemy = Enemy.find(params[:id])
    respond_to do |format|
      format.html # Seu arquivo show.html.erb será renderizado automaticamente
      format.json { render json: @enemy }
    end
  end

  private

  def enemy_params
    params.permit(:name, :power_base, :power_step,:level, :kind)
  end

  def set_enemy
    @enemy = Enemy.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :not_found

end

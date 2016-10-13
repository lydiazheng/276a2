class TokimonsController < ApplicationController
  def index
    @tokimons = Tokimon.all
  end

  def show
    @tokimon = Tokimon.find(params[:id])
  end

  def new
    @trainer = Trainer.find(params[:trainer_id])
    @tokimon = @trainer.tokimons.build  
  end
  


  def create
    @trainer = Trainer.find(params[:trainer_id])
    @tokimon = @trainer.tokimons.build(tokimon_params)
    if @tokimon.save
      flash[:info] = "tokimon created successful!"
      redirect_to @trainer
    else
      render 'show'
    end
  end
  

  def edit
    @tokimon = Tokimon.find(params[:id])
  end

  def update
     @trainer = Tokimon.find(params[:id])
     @tokimon = @trainer.tokimons.build
    if @tokimon.update_attributes(tokimon_params)
      flash[:success] = "Profile updated"
      redirect_to @tokimon
    else
      render 'edit'
    end
  end
  
  def delete
  end

  def destroy
    @trainer = Trainer.find(Tokimon.find(params[:id]).trainer_id)
    Tokimon.find(params[:id]).destroy
    flash[:success] = "Tokimon deleted"
    redirect_to @trainer 
  end
  
private
    def tokimon_params
      params.require(:tokimon).permit(:name, :weight, :height, 
        :fly, :fight, :fire, :water, :electric, :ice, :trainer_id)
      # params.require(:tokimon).permit!
    end



end

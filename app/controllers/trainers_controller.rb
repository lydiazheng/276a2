class TrainersController < ApplicationController
  def new
    @trainer = Trainer.new
  end
  
  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      flash[:info] = "Trainer Created Successfully! Congratulation"
      redirect_to @trainer
    else
      render 'new'
    end
  end

  def index
    @trainer = Trainer.order("level")
  end

  def show
    @trainer = Trainer.find(params[:id])
    @tokimons = @trainer.tokimons.all
  end

  def edit
  end

  def update
  end

  def delete
  end

    def destroy
    Trainer.find(params[:id]).destroy
    flash[:success] = "Trainer deleted"
    redirect_to trainers_url
  end
  
  private
  def trainer_params
    params.require(:trainer).permit(:name, :level,:email)
  end
end

class KittensController < ApplicationController
  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:notice] = "Kitten summoned"
      redirect_to @kitten
    else
      flash.now[:error] = "Could not summon kitten"
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])

    if @kitten.update(kitten_params)
      flash[:notice] = "Kitten re-summoned"
      redirect_to @kitten
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    flash[:alert] = 'Kitten Destroyed'

    redirect_to root_path, status: :see_other
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end

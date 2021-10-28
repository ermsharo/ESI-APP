class IngredienteController < ApplicationController


  def index
    @ingrediente= Ingrediente.all
  end

  def show
    @ingrediente = Ingrediente.find(params[:id])
  end

  def new
    @ingrediente = Ingrediente.new
 
 
  end

  def create
    @ingrediente = Aluno.new(ingrediente_params) 
    if @ingrediente.save
      redirect_to @ingrediente
    else
      render 'new'
    end
  end

  def edit
    @ingrediente = Ingrediente.find(params[:id])
  end

  def update
    @ingrediente = Ingrediente.find(params[:id])

    @ingrediente.update(ingrediente_params)

    redirect_to ingrediente_path
  end

  def destroy
    @ingrediente = Ingrediente.find(params[:id])
    @ingrediente.destroy

    redirect_to ingrediente_path
  end
  private
  def ingrediente_params
    params.require(:ingrediente).permit(:nome, :relevancia)
  end

end
class CategoriasController < ApplicationController
  before_filter :authenticate
  layout "admin"
  def index
  	@categorias = Categoria.all
  end
  

  def new
    @categoria = Categoria.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end
  # GET /categorias/1/edit
  def edit
    @categoria = Categoria.find(params[:id])
  end


  def create
    @categoria = Categoria.new(params[:categoria])
		
    respond_to do |format|
      if @categoria.save
        flash[:notice] = 'Categoria criada com sucesso'
        format.html { redirect_to(admin_index_path) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @categoria = Categoria.find(params[:id])

    respond_to do |format|
      if @categoria.update_attributes(params[:categoria])
        flash[:notice] = 'Categoria Atualizada com sucesso.'
        format.html { redirect_to(admin_path) }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy
    respond_to do |format|
      format.html { redirect_to(admin_index_path) }
    end
  end
end

class FotosController < ApplicationController
  
  before_filter :authenticate, :only => [:new, :edit, :destroy, :create]
 	layout "application", :only => [:index, :show]
  def index
    @categorias = Categoria.find(:all, :order => "id desc")
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /fotos/1
  # GET /fotos/1.xml
  def show
    @categoria = Categoria.find(params[:id])
    @fotos = Foto.all(:conditions => "categoria_id = '#{params[:id]}'")
  end

  # GET /fotos/new
  # GET /fotos/new.xml
  def new

    @foto = Foto.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /fotos/1/edit
  def edit
    @foto = Foto.find(params[:id])
  end

  # POST /fotos
  # POST /fotos.xml
  def create
    @foto = Foto.new(params[:foto])

    respond_to do |format|
      if @foto.save
        flash[:notice] = 'Foto adicionada com sucesso.'
        format.html { redirect_to(new_foto_path) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /fotos/1
  # PUT /fotos/1.xml
  def update
    @foto = Foto.find(params[:id])

    respond_to do |format|
      if @foto.update_attributes(params[:foto])
        flash[:notice] = 'Foto atualizada com sucesso.'
        format.html { redirect_to(@foto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @foto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos/1
  # DELETE /fotos/1.xml
  def destroy
    @foto = Foto.find(params[:id])
    @foto.destroy

    respond_to do |format|
      format.html { redirect_to(admin_index_path) }
      format.xml  { head :ok }
    end
  end
end

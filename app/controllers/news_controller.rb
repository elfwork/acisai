class NewsController < ApplicationController

	before_filter :authenticate, :only => [:new, :edit, :create, :update]
	layout "application", :only => [:show, :show_expo]

	def new
		render :layout => "admin"
		@new = New.new
	end
	
	def edit
   	@new = New.find(params[:id])
	end
	
	def show
		@status = params[:id]
		@noticias = New.find(:all, :conditions => ["status = ?", @status], :order => "id desc")
	end
	
	def create
		@new = New.new(params[:new])
		
    respond_to do |format|
      if @new.save
        flash[:notice] = 'Noticia Cadastrada com sucesso'
        format.html { redirect_to(admin_index_path) }
      else
        format.html { render :action => "new" }
      end
    end
	end
	
	def update
    @new = New.find(params[:id])

    respond_to do |format|
      if @new.update_attributes(params[:new])
        flash[:notice] = 'Noticia Atualizada com sucesso.'
        format.html { redirect_to(:controller => "home", :action => "index") }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @new = New.find(params[:id])
    @new.destroy

    respond_to do |format|
      format.html { redirect_to(admin_index_path) }
      format.xml  { head :ok }
    end
  end
		
end

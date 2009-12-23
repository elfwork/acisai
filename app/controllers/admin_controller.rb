class AdminController < ApplicationController
	before_filter :authenticate
	layout "admin"
	
	def index
		@categorias = Categoria.all
		@noticias = New.all
	end
	
	def show
		id = params[:id]
		@cat = Categoria.all(:conditions => "id = '#{id}'")
  	@fotos = Foto.all(:conditions => "categoria_id = '#{id}'")
	end
	
	def show_noticias
		
	end
	
end

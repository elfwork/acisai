ActionController::Routing::Routes.draw do |map|

	map.resources :fotos, :categorias, :admin
	map.resources :news, :as => "noticias"
	map.resources :contacts, :as => "contato", :path_names => {:new => 'fale_conosco'}

  map.with_options :controller => "home" do |home|
  	home.sobre "sobre", :action => "sobre"
  	home.associados "associados", :action => "associados"
  	home.contato "contato", :action => "contato"
  	home.historico "historico", :action => "historico"
  	home.valores "valores", :action => "valores"
  	home.valores "participacao", :action => "participacao"
  	home.valores "organizacao", :action => "organizacao"
  	home.expositores "expositores", :action => "expositores"
    home.presidente "presidente", :action => "presidente"
  	home.localizacao "localizacao", :action => "localizacao"
  	home.representatividade "representatividade", :action => "representatividade"
  	home.cpremiada "cpremiada", :action => "cpremiada"
    home.programacao "programacao", :action => "programacao"
	  home.cpremiada "convenios", :action => "convenios"
	  home.cpremiada "patrocinadores", :action => "patrocinadores"
  end
  
  map.root :controller => "home"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end

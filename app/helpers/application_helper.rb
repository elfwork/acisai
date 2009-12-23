# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	
	#helper para formatacao da data
	def data_bonita(data)
		data.strftime("%d/%m/%Y")
	end
	
	#helper para exibir titulos das paginas
	def title(page_title)
		content_for(:title) { page_title }
	end

  def link_voltar(nome)
    return link_to_function nome, 'history.back()', :class => "back"
  end

end

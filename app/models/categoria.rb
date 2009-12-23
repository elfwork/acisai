class Categoria < ActiveRecord::Base
	has_many :fotos, :dependent => :destroy
	
	has_attached_file :capa, :styles => {:small => "170x120#"}
		
end

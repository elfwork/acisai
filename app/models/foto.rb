class Foto < ActiveRecord::Base
	
	belongs_to :categoria
	has_attached_file :imagem,
             :styles => { :small => ['160x130#', :png], :large => "550x410" },
             :convert_options => {
                :small => "\\( +clone  -threshold -1 \
                     -draw 'fill black polygon 0,0 0,15 15,0 fill white circle 15,15 15,0' \
                     \\( +clone -flip \\) -compose Multiply -composite \
                     \\( +clone -flop \\) -compose Multiply -composite \
                     \\) +matte -compose CopyOpacity -composite"
                }		
end

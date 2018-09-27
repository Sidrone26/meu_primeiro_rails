class Shop < ApplicationRecord
	validates :name , presence: {message: 'Preençha o nome'}
	validates :addres , presence: {message: 'Informe seu endereço'}
end

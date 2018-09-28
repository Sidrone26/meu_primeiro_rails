class ShoppingController < ApplicationController
   def index
    @shops = Shop.all
  end
 
  def show
    @shop = Shop.find_by(id: params['id'])
  end

  def create
    shop = Shop.new(permit)
    if shop.save
      @msg = 'Salvo com sucessso!'
    else
      @msg = shop.errors.messages
    end
  end

  def edit
      @shop = Shop.find_by(id: params['id'])

  end

  def update
    shop = Shop.find_by(id: params['id'])
    if shop.update_attributes(permit)
      @msg = 'Salvo com sucessso!'
    else
      @msg = shop.errors.messages

    end
  end

  def destroy
    shop = Shop.find_by(id: params['id'])
    if shop.destroy
      @msg = 'Apagado com sucessso!'
    else
      @msg = shop.errors.messages

    end
  end

  private

  def permit
    params['shop'].permit(:name, :addres)
  end
end


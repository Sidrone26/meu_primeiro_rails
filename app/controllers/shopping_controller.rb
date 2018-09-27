class ShoppingController < ApplicationController
   def index
    @shops = Shop.all
  end
  def index
    @shops = Shop.all
  end
  def shows
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
  end

  def destroy
  end

  private

  def permit
    params['shop'].permit(:name, :addres)
  end
end


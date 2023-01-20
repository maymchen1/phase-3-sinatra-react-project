class ItemsController < ApplicationController
    get "/items" do
        @items = Item.not_in_cart
        @items.to_json
    end
    post "/items" do
        @item = Item.new(params[:item])
        if @item.save
            @item.to_json
        else
            {error: @item.errors.full_messages}.to_json
        end
    end
    patch "/items/:id" do 
        find_item
        if @item.update(params)
            @item.to_json
        end
end
delete "/items/:id" do
    find_item
    if @item
        @item.destroy
        @item.to_json
    end
    end
private
def find_item
    @item = Item.find_by_id(params[:id])
end
end


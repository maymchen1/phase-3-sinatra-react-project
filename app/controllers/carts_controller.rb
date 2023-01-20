class CartsController < ApplicationController   
    get "/carts/:id"
    find_cart
    @cart.to_json(include:[:items])
    end

    post "carts" do
        if Cart.last.status != "current"
        @cart = Cart.create
        @cart.to_json(include:[:items])
        else
            Cart.last.to_json(include:[:items])
        end
    end

    patch "carts/:id" do
        find_cart 
        @cart.update(status: "complete")
        @cart.to_json(include:[:items])
    end

    private
    def find_cart
        @cart = Cart.find_by_id(params[:id])
end

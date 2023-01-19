class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.float :price, default: 0.0
      t.text :description
      t.string :image_url, default: "https://cdnprod.mafretailproxy.com/sys-master-root/hec/hb9/13680756686878/772123995418_main_480Wx480H" 
      t.integer :cart_id
    end
  end
end

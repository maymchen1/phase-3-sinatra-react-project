puts "🌱 Seeding spices..."

# Seed your database here
puts "Destroying all Data!"
Cart.destroy_all
Item.destroy_all

current_cart = Cart.create 

Item.create([{
    title: "Honest Beauty Extreme Length Mascara + Lash Primer",
    description: "Infused with Jojoba Esters, Honest Beauty's award-winning, bestselling Extreme Length Mascara + Lash Primer is a cult classic for a reason: smooth black mascara delivers extreme length and sky high lift. Packaging may vary.",
    price: 17.0,
    image_url: "https://media.allure.com/photos/61b25a8ee0ba91b848042917/1:1/w_1920%2Cc_limit/Honest%2520Beauty%2520Extreme%2520Length%2520Mascara%2520+%2520Lash%2520Primer.jpg",
    cart: current_cart
},
{
    title: "Laneige Lip Sleeping Mask",
    description: "A leave-on lip mask that delivers intense moisture and antioxidants while you sleep with Berry Fruit Complex™, Murumuru seed and Shea butter.",
    price: 22.0,
    image_url: "https://media.allure.com/photos/61b253411cdc0f773b0c2fb7/1:1/w_1920%2Cc_limit/Laneige%2520Lip%2520Sleeping%2520Mask.jpg",
    cart: current_cart
},
{
    title: "Rare Beauty by Selena Gomez Warm Wishes Effortless Bronzer Sticks",
    description: "A breakthrough bronzing stick for a quick and visible sunkissed glow with a smooth, seamless, second-skin finish—just swipe on, blend, and go.",
    price: 26.0,
    image_url: "https://www.sephora.com/productimages/sku/s2518934-main-zoom.jpg?imwidth=612",
    cart: current_cart
},
{
    title: "Charlotte Tilbury Hollywood Flawless Filter",
    description: "A complexion booster that blurs, smooths, and illuminates for a real-life filter effect. Customize your glow with four ways to apply.",
    price: 46.0,
    image_url: "https://www.sephora.com/productimages/sku/s2116010-main-zoom.jpg?imwidth=612",
    cart: current_cart
},
{
    title: "Dior BACKSTAGE Rosy Glow Blush",
    description: "A secret weapon to create the appearance of naturally rosy cheeks for a fresh, glowy effect.",
    price: 39.0,
    image_url: "https://www.sephora.com/productimages/sku/s2328375-main-zoom.jpg?imwidth=612",
    cart: current_cart
},

])

puts "✅ Done seeding!"

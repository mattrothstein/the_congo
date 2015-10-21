class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  serialize :cart, Array

  def add_to_cart(product)
    cart.push(product)
  end

  def sum
    total = 0
    cart.each do |product|
      total += product.price_in_cents
    end
    format("%.2f", total.to_f / 100)
  end

end

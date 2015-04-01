require "spree/core"
namespace :spree do
  desc 'reload prices on products'
  task :replace_price => :environment do
    # old_logger = ActiveRecord::Base.logger
    Spree::Product.all.each do |product|
      v = product.master.default_price.amount.to_f
      product.price = v
      product.save
    end
  end
end

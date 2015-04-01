require "spree/core"
namespace :spree do
  desc 'reload prices on products'
  task :replace_price => :environment do
    # old_logger = ActiveRecord::Base.logger
    Spree::Variant.all.each do |variant|
      v_price = variant.default_price.amount.to_f
      v_cost_price = variant.cost_price
      variant.cost_price = v_cost_price.to_f/10
      variant.price = v_price
      variant.save
    end
  end
end

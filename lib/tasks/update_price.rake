require "spree/core"
namespace :spree do
  desc 'reload prices on products'
  task :replace_price => :environment do
    # old_logger = ActiveRecord::Base.logger
    Spree::Variant.all.each do |variant|
      v = variant.default_price.amount.to_f
      variant.price = v
      variant.save
    end
  end
end

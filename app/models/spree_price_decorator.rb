Spree::Price.class_eval do
    def money
      Spree::Money.new(price || 0, { currency: currency })
    end

    def price
      return amount.to_f*10 if variant.nil? # added for product creation
      return amount unless variant.product.dcm
      amount.to_f*10
    end

    def price=(price)
      price = price.to_s.tr(',', '.').to_f
      return self[:amount] = parse_price(price.to_f/10) if variant.nil? # added for product creation
      return self[:amount] = parse_price(price) unless variant.product.dcm
      self[:amount] = parse_price(price.to_f/10)
    end

    def parse_price(price)
      return price unless price.is_a?(String)

      separator, delimiter = I18n.t([:'number.currency.format.separator', :'number.currency.format.delimiter'])
      non_price_characters = /[^0-9\-#{separator}]/
      price.gsub!(non_price_characters, '') # strip everything else first
      price.gsub!(separator, '.') unless separator == '.' # then replace the locale-specific decimal separator with the standard separator if necessary

      price.to_d
    end
end

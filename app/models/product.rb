require 'csv'

class Product < ActiveRecord::Base
  include AlgoliaSearch

  algoliasearch per_environment: true do
    attributesToIndex ['unordered(description)', 'sku', 'store_number', 'unordered(promo_tag)', 'uom']
    attributesForFaceting ['store_number']
  end

  def self.import(file_path)
    CSV.foreach(file_path, { headers: true, col_sep: '|', quote_char: "`"}).each_slice(100) do |slice|
      columns = slice[0].headers
      Product.bulk_import(columns,
                          slice.map(&:to_hash),
                          on_duplicate_key_update: columns,
                          validate: false)
    end
  end
end

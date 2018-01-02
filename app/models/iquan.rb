class ProductClick < ApplicationRecord
  self.table_name = 'iquan_product_clicks'
end

class Link < ApplicationRecord
  self.table_name = 'shikuai_links'
end

class SuggestKeyword < ApplicationRecord
  self.table_name = 'iquan_suggest_keywords'
end

class CidKeywordRelation < ApplicationRecord
  self.table_name = 'iquan_coupon_keyword_relations'
end

class Shop < ApplicationRecord
  self.table_name = 'iquan_shops'
end

class ShopCoupon < ApplicationRecord
  self.table_name = 'iquan_shop_coupons'
end

class Product < ApplicationRecord
  self.table_name = 'iquan_products'
end

class CouponSuggestion < ApplicationRecord
  self.table_name = 'iquan_coupon_suggestions'
end

class CateCollection < ApplicationRecord
  self.table_name = 'iquan_cate_collections'
end

class SearchResult < ApplicationRecord
  self.table_name = 'iquan_search_results'
end

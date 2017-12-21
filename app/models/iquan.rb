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

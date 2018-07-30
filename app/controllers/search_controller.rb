class SearchController < ApplicationController

  def index
    @q = params['product'] && params['product']['q']
    return if @q.blank?

    @hits = Product.search(@q, { hitsPerPage: 5, page: (params['page'] || 1) })
  end
end

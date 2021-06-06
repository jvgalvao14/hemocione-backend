# frozen_string_literal: true

ApiPagination.configure do |config|
  config.paginator = :kaminari
  config.total_header = 'X-Total'
  config.per_page_header = 'X-Per-Page'
  config.page_header = 'X-Page'
  config.response_formats = %i[json]
  config.page_param = :page
  config.per_page_param = :per_page
  config.include_total = true
end
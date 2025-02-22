# frozen_string_literal: true
class Book
  include HTTParty

  base_uri 'https://www.dbooks.org/api'
  default_params fields: 'title,authors,cover_image'

  def self.all
    get("/recent")
  end

  def self.search(title)
    get("/search/#{title}")
  end

  def self.find(book_id)
    response = get("/book/#{book_id}")
    response.parsed_response
  end
end

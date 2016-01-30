json.array!(@books) do |book|
  json.extract! book, :id, :tite, :titleKana, :subTitle, :subTitleKana, :seriesName, :seriesNameKana, :author, :authorKana, :publisherName, :size, :isbn, :itemCaption, :salesDate, :itemUrl, :affiliateUrl, :smallImageUrl, :mediumImageUrl, :largeImageUrl, :purchaseDate, :finishReadingDate, :evaluation, :memo, :category, :tags
  json.url book_url(book, format: :json)
end

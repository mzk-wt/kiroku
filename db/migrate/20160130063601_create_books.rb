class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :titleKana
      t.string :subTitle
      t.string :subTitleKana
      t.string :seriesName
      t.string :seriesNameKana
      t.string :author
      t.string :authorKana
      t.string :publisherName
      t.string :size
      t.string :isbn
      t.string :itemCaption
      t.string :salesDate
      t.string :itemUrl
      t.string :affiliateUrl
      t.string :smallImageUrl
      t.string :mediumImageUrl
      t.string :largeImageUrl
      t.date :purchaseDate
      t.date :finishReadingDate
      t.integer :evaluation
      t.text :memo
      t.string :category
      t.string :tags

      t.timestamps null: false
    end
  end
end

class HomeController < ApplicationController
  def index
    # ile obiektów wyświetlanych na każdym kafelku
    @citations_display_number = 4
    @authors_display_number = 4
    @wide_photos_display_number = 3
    @books_display_number = 5
    @stickers_display_number = 6 # Stickers pojawiają się w dwóch okienkach
    @liberty_translations_display_number = 10
    # tablice przykładowych rekordów
    @random_citations = Citation.on_tale.sample(@citations_display_number)
    @random_authors = Author.all.sample(@authors_display_number)
    @random_wide_photos = WidePhoto.all.sample(@wide_photos_display_number)
    @random_books = Book.all.sample(@books_display_number)
    @random_stickers = Sticker.all.sample(@stickers_display_number)
    @random_translations = LibertyTranslation.all.sample(@liberty_translations_display_number)
    random_stickers = Sticker.all.sample(@stickers_display_number)
    @random_stickers1,@random_stickers2 = random_stickers.each_slice((random_stickers.size/2.0).round).to_a

    @facebook_path = 'https://www.facebook.com/pages/Liberty-Center/1538412999750341?ref=hl'
  end
  def about

  end
end

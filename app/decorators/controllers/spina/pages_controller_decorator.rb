module Spina
  PagesController.class_eval do

    private

    def books
      Book.order('created_at DESC')
    end
    helper_method :books

    def books_page_path
      Page.where(view_template: 'books').first.try(:materialized_path)
    end
    helper_method :books_page_path

    def average_rating
      Book.average('rating') || 0
    end
    helper_method :average_rating

    def rating_count
      Book.count
    end
    helper_method :rating_count

  end
end
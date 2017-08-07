class PagesController < ApplicationController
  before_action :set_page_instance, except: [:index]

  def index

  end

  def about
  end

  def faq
  end

  def special_offer_all
  end

  def special_offer_one
  end

  def division_all
  end

  def division_one
  end

  def division_rest
  end

  def portfolio
  end

  def contacts
  end

  def terms_of_use
  end

  private

  def set_page_instance
    set_page_metadata(action_name)
    @_locale_links ||= {}
    Cms.config.provided_locales.each do |locale|
      @_locale_links[locale.to_sym] = send("#{action_name}_#{locale}_path")
    end
  end
  
end
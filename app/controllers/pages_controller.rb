class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def account
    @title = "Account"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def faq
    @title = "Faqs"
  end

end

class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def account
    @title = "Account"
  end

  def about
    @title = "About"
    if current_user.nil? #from application controller
      redirect_to new_session_url
    else
      @cur = current_user.name
    end
  end

  def contact
    @title = "Contact"
  end

  def faq
    @title = "Faqs"
  end

end

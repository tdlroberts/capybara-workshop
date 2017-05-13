class Pages
  def page_home
    @page_home ||= HomePage.new
    @page_home
  end

  def page_login
    @page_login ||= LoginPage.new
    @page_login
  end
end

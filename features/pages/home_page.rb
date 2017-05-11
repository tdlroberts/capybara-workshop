class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:id, 'start_button')
  end

  def load
    visit('/')
  end
end

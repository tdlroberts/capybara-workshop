When(/^I am on Appimation login page/) do
  visit('/')
  # no root meklē visus elementus kam id = login-b
  # "//*[@id=\"login-b\"]")
  # atrod visus elementus zem header, kas ir pogas
  # //header/descendant::button
  # atrod specifisku pogu zem header
  # "//header/descendant::button[@id='login-b']"
  # "//header/descendant::button[contains(text(), 'Login')]"
  # all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]").each do |el|
  #   puts el.text
  all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
    puts el
    # piemērs kā nevajadzētu darīt
    # //*[@id="main"]/section[2]/div[1]/section[1]/img
    # //*[@id="main"]/section[2]/div[1]/section[1]/h3
  end
end

When(/^I am on Appimation login page/) do
  visit('/')

# test by checing is elements are present
  puts find(:id, 'start_button').visible? ? "Try now button found" : "Try now button not found"  # find_button('Try now').text
  puts find(:id, 'signup-b').visible? ? "Sign up button found" : "Sign up button not found"
  puts find(:id, 'cta').visible? ? "Contact Us section found" : "Contact Us section not found"
  puts find(:xpath, '//*[@id="name"]').visible? ? "Contact Us \"Name input\" found" : "Contact Us \"Name input\" not found"
  puts find(:xpath, '//*[@id="email"]').visible? ? "Contact Us \"E-mail input\" found" : "Contact Us \"E-mail input\" not found"
  puts find(:xpath, '//*[@id="contactus-message"]').visible? ? "Contact Us \"Message input \" found" : "Contact Us \"Message input\" not found"
  puts find(:xpath, '//*[@id="contactus-button"]').visible? ? "Contact Us \"Send\" button found" : "Contact Us \"Send\" button not found"
  all(:xpath, '//*[contains(@class, \'box special features\')]/descendant::section/h3').each.with_index(1) do |el, i|
    puts el.visible? ? "Feature #{i} found: " + el.text : "Feature #{i} not found"
  end

  # find(:xpath, '//*[@id="name"]').set('Roberts Apškrūms')
  # find(:xpath, '//*[@id="email"]').set('roberts.apskrums@testdevlab.com')
  # find(:xpath, '//*[@id="contactus-message"]').set('Apimation zajebis')

  # no root meklē visus elementus kam id = login-b
  # "//*[@id=\"login-b\"]")
  # atrod visus elementus zem header, kas ir pogas
  # //header/descendant::button
  # atrod specifisku pogu zem header
  # "//header/descendant::button[@id='login-b']"
  # "//header/descendant::button[contains(text(), 'Login')]"
  # all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]").each do |el|
  #   puts el.text
  # all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
  #   puts el
    # piemērs kā nevajadzētu darīt
    # //*[@id="main"]/section[2]/div[1]/section[1]/img
    # //*[@id="main"]/section[2]/div[1]/section[1]/h3
  # end
  # //*[@id="main"]/section[2]
# //*[@id="contactus-button"]
# //*[@id="contactus-message"]
# //*[@id="cta"]
# //*[@id="start_button"]
# //*[@id="name"]

end

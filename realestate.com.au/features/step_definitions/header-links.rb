#encoding: utf-8

Given(/^the "(.*?)" header link$/) do |headerlink|
  @headerlink = headerlink
end

When(/^I click on it$/) do
  within(:xpath, "//nav[@class='rui-main-nav']") do
    click_link(@headerlink)  
  end
end

Then(/^I end up on the correct landing page$/) do
  if @headerlink == "Commercial"
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    current_url.should == "http://www.realcommercial.com.au/for-sale"
  elsif @headerlink == "New homes"
    current_url.index(Capybara.app_host + "/new-homes/").should == 0
  elsif @headerlink == "Find agents"
    current_url.should == Capybara.app_host + "/find-agent"
  elsif @headerlink == "Home ideas"
    current_url.should == Capybara.app_host + "/home-ideas/"
  elsif @headerlink == "Sign In"
    current_url.should == Capybara.app_host + "/my-real-estate/login"
  else
    current_url.index(Capybara.app_host + "/" + @headerlink.downcase).should == 0
  end
end
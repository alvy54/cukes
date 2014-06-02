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
    expect(current_url).to eq("http://www.realcommercial.com.au/for-sale")
  elsif @headerlink == "New homes"
    expect(current_url.index(Capybara.app_host + "/new-homes/")).to eq(0)
  elsif @headerlink == "Find agents"
    expect(current_url).to eq(Capybara.app_host + "/find-agent")
  elsif @headerlink == "Home ideas"
    expect(current_url).to eq(Capybara.app_host + "/home-ideas/")
  elsif @headerlink == "Sign In"
    expect(current_url).to eq(Capybara.app_host + "/my-real-estate/login")
  else
    expect(current_url.index(Capybara.app_host + "/" + @headerlink.downcase)).to eq(0)
  end
end
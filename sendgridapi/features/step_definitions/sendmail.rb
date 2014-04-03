#encoding: utf-8

Given(/^the following parameters:$/) do |table|
  @params = table.rows_hash
  @params.each do |key, value|
    if key.index("files") == 0
      key = File.new(value, 'rb')
    end
  end
end

When(/^I call the API$/) do
  begin
    @response = RestClient.post 'https://api.sendgrid.com/api/mail.send.json', @params
  rescue => e
    puts "Failed to call API: " + e.response
  end
end

Then(/^the email is sent$/) do
  @response.code.should == 200
  JSON.parse(@response.body).should == JSON.parse('{"message": "success"}')
end
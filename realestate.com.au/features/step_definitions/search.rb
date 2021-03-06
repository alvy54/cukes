#encoding: utf-8

Given(/^the following search criteria:$/) do |table|
  @search_criteria = table.rows_hash
  
  if @search_criteria.has_key?("Property Type")
    find_field('propertyType').click
    check @search_criteria['Property Type']  
  end
  
  if @search_criteria.has_key?("Max Price")
    find_field('maxPrice').click
    first('dd', :text => @search_criteria['Max Price']).click  
  end
  
  fill_in('where', :with => @search_criteria['Suburb'] + ", " + @search_criteria['State'])
end

When(/^I click on search$/) do
  click_on('search')
end

Then(/^I get listing numbers in the results$/) do
  all(:xpath, '//div[@class="resultBody"]', {:visible => true, :minimum => 1}).each do |div|
    div[:id].should match(/t\d+/)
  end
end

Then(/^I get results in the State and Suburb I specified/) do
  all(:xpath, '//a[@rel="listingName"]', {:visible => true, :minimum => 1}).each do |a|
    a[:href].should include(@search_criteria['State'].downcase + '-' + @search_criteria['Suburb'].downcase)
  end
end

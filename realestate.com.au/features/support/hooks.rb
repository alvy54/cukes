#encoding: utf-8

Before do
  visit('/')
end

After do |scenario|
  if scenario.failed?
    save_page
  end
end
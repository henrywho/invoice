# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
file = File.read('data/placements_teaser_data.json')
line_items = JSON.parse(file)
campaigns = {}
line_items.each do |line_item|
  campaign = campaigns[line_item['campaign_name']]
  unless campaign
    campaign = Campaign.find_or_create_by(name: line_item['campaign_name']) do |c|
      c.name = line_item['campaign_name']
    end
  end

  LineItem.create! do |li|
    li.name = line_item['line_item_name']
    li.booked_amount = line_item['booked_amount']
    li.actual_amount = line_item['actual_amount']
    li.adjustments = line_item['adjustments']
    li.campaign_id = campaign.id
  end
end

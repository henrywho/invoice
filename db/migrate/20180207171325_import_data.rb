class ImportData < ActiveRecord::Migration[5.1]
  def change
    require 'json'
    file = File.read('data/placements_teaser_data.json')
    line_items = JSON.parse(file)
    line_items.each do |line_item|
      campaign = Campaign.find_or_create_by(name: line_item['campaign_name']) do |c|
        c.name = line_item['campaign_name']
      end

      LineItem.create! do |li|
        li.name = line_item['line_item_name']
        li.booked_amount = line_item['booked_amount']
        li.actual_amount = line_item['actual_amount']
        li.adjustments = line_item['adjustments']
        li.campaign_id = campaign.id
      end
    end

  end
end

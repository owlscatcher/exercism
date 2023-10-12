class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    temp = Array.new
    @items.each { |item| temp.push item[:name] }

    temp.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  def total_stock

  end

  private
  attr_reader :items
end

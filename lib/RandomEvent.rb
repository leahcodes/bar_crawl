class RandomEvent < ActiveRecord::Base
  belongs_to(:game)


  define_singleton_method(:new_random_event) do
    crawl_event = RandomEvent.order("RANDOM()").first
    crawl_event
  end

end

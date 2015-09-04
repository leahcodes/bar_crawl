class RandomEvent < ActiveRecord::Base
  belongs_to(:game)


  define_singleton_method(:new_random_event) do
    crawl_event = RandomEvent.order("RANDOM()").last
    crawl_event
  end

end

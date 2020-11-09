class PagesController < ApplicationController
  def home
    @greeting = "Hello cats!"

    start_secs_since_epoch = IO.read('start-time.txt').to_i
    now_secs_since_epoch = Time.now.to_i
    update_time = now_secs_since_epoch - start_secs_since_epoch

    @time = update_time
  end
end

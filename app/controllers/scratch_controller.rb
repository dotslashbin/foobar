class ScratchController < ApplicationController
  def index
    user = { name: "Alice" }
    puts user

    another_user = { "name" => "Alice" }
    puts another_user

    puts user === another_user
  end
end

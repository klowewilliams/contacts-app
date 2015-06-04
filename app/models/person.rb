class Person < ActiveRecord::Base

  def friendly_updated_at
    updated_at.strftime("%B %d, %Y")
  end

  def jpn_prefix_number
    "+81 #{mobile_number}"
  end

end

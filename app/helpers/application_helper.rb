module ApplicationHelper
  def rank_name(rank_id)
    case
    when rank_id == 1
      "Tenth Gup"
    when rank_id == 2
      "Ninth Gup"
    when rank_id == 3
      "Eighth Gup"
    when rank_id == 4
      "Seventh Gup"
    when rank_id == 5
      "Sixth Gup"
    when rank_id == 6
      "Fifth Gup"
    when rank_id == 7
      "Fourth Gup"
    when rank_id == 8
      "Third Gup"
    when rank_id == 9
      "Second Gup"
    when rank_id == 10
      "First Gup"
    when rank_id == 11
      "First Dan"
    when rank_id == 12
      "Second Dan"
    when rank_id == 13
      "Third Dan"
    when rank_id == 14
      "Fourth Dan"
    else
      "Senior Master"
    end
  end
  
  def eligible_students_for_section(section)

  end
  
  def eligible_unregistered_students_for_section(section)

  end
end

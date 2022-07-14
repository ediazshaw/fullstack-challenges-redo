def a_question?(your_message)
  your_message.chars.last == "?"
end

def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if a_question?(your_message)
    "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    # this is not necessary for the code to work but it is for the rake
    ""
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    ""
  elsif your_message == your_message.upcase && a_question?(your_message)
    "I can feel your motivation! Silly question, get dressed and go to work!"
  elsif your_message == your_message.upcase
    "I can feel your motivation! I don't care, get dressed and go to work!"
  else
    coach_answer(your_message)
  end
end

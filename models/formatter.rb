class Formatter

 def initialize
  # had @text = text but wouldn't work?
 end

 def upcase(text)
 return text.upcase
 end

  def camelcase(text)
   camelcase = text.split('_').collect(&:capitalize).join
  return camelcase
  end

end


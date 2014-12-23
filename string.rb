class String

  def titleize(custom=false, articles=nil)
    if custom && !articles.nil?
      self.custom_titleize(articles)
    elsif custom
      self.custom_titleize
    else
      ActiveSupport::Inflector.titleize(self)
    end
  end

  def custom_titleize(articles=%w`a an the at by for is in of on to up and as but it or nor`)
    array, cap_next_word = [], false
    self.underscore.humanize.split(/\s+/).each do |word|
      word, cap_next_word = word.capitalize, false if cap_next_word
      cap_next_word = true if %w`! ? .`.include?(word.split('').last)
      array << (articles.include?(word) ? word : word.gsub(/\b(?<!['’`])[a-z]/) { $&.capitalize })
    end
    array.join(' ')
  end
  
end

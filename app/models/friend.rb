class Friend < ActiveRecord::Base
  attr_accessible :email, :friendshiplevel, :fullname, :nickname, :phone, :website

  FRIENDSHIP_LEVELS = [ ["Casual", 1], ["Good", 2], ["Close", 3], ["Best", 4] ]\

  #validations
  validates_format_of :website, :with => /^(http:\/\/)?(www\.)?(\w+[-\.]?){1,}\.(com|edu|org|uk|net|gov|biz|info|mil)$/, :message => "is not valid format", :allow_blank => true
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))$/i, :message => "is not a valid format"
  validates_format_of :phone, :with => /^\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}$/, :message => "should be 10 digits (area code needed) and delimited with dashes only", :allow_blank => true
  validates_inclusion_of :friendshiplevel, :in => ["Casual", "Good", "Close", "Best"]
  validates_presence_of :fullname
  validates_presence_of :nickname

end

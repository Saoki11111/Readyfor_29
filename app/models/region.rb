class Region < Tag
  validates :name, presence: true
  validates :type, presence: true
end

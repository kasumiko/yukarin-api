class Song < ApplicationRecord
    scope :with_regexp, -> (column, pattern) { where("`#{table_name}`.`#{column}` REGEXP ?", pattern) }
end

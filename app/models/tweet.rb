class Tweet < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_full_text,
       against: {
        description: 'B',
        username: 'A'
       },
       using: {
        tsearch: { prefix: true }
       }
end

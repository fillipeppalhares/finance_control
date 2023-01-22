# frozen_string_literal: true

class EntryTypeEnum < EnumerateIt::Base
  associate_values(
    credit: 1,
    debit: 2
  )
end
class Validate < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << "must start with 'The'" unless value =~ /^The/
  end
end
 
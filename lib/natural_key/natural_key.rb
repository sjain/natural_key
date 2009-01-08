module ActiveRecord
  class Base
    class << self
      def natural_key(*key_attributes)
        # TODO validate the supplied key_attributes are subset of all attributes
        # TODO key_attributes should not contain primary_key/surrogate_key
        raise "natural key attributes cannot be empty" if key_attributes.empty?
        @@key_attributes = key_attributes
      end

      # can't use method "create_or_update" since there is already a private method with that name
      # in ActiveRecord::Base
      # TODO The following method should only be made available when natural_key is called with proper
      # attributes. (hint: use class_eval?)
      def create_or_update_by_natural_key(options)
        #TODO options should contain all key_attributes, and their values should be non-nil
        key_options = options.reject { |k,v| !@@key_attributes.include?(k) }
        record = find(:first, :conditions => key_options)
        if(record.nil?)
          record = create(options)
        else
          record.update_attributes!(options)
        end
        record
      end
    end
  end
end

#module NaturalKey
#  def self.included other
#    other.extend self
#  end
#end
#
#ActiveRecord::Base.send :include, NaturalKey

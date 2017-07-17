module ImageClearer
  def self.included(host_class)
    host_class.extend(ClassMethods)
  end
  module ClassMethods
    def clear_image_for(field)
      attr_accessor "clear_#{field}"
      before_validation "check_for_clear_#{field}"
      define_method("clear_#{field}=") do |val|
        instance_variable_set("@clear_#{field}", !val.to_i.zero?)
      end
      define_method("clear_#{field}") do
        !!instance_variable_get("@clear_#{field}")
      end
      alias_method "clear_#{field}?", "clear_#{field}"
      class_eval <<-"END"
        def check_for_clear_#{field}
          if clear_#{field}?
            self.#{field} = nil
          end
        end
      END
   
    end
  end
end
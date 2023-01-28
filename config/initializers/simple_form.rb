# frozen_string_literal: true

#
# Uncomment this and change the path if necessary to include your own
# components.
# See https://github.com/heartcombo/simple_form#custom-components to know
# more about custom components.
# Dir[Rails.root.join('lib/components/**/*.rb')].each { |f| require f }
#
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.wrappers :default, class: :input, hint_class: :field_with_hint, error_class: :field_with_errors,
                            valid_class: :field_without_errors do |b|
    
    b.use :html5
    b.use :placeholder
    b.use :label, class: 'hidden'
    b.use :input, class: 'form-control'
    b.use :error, wrap_with: { tag: :span, class: 'error' }
    b.use :hint,  wrap_with: { tag: :span, class: 'hint' }
  end

  # Default configuration
  config.generate_additional_classes_for = []
  config.default_wrapper = :default
  config.button_class = 'btn'
  config.label_text = lambda { |label, _, _| label }
  config.error_notification_tag = :div
  config.error_notification_class = 'error_notification'
  config.browser_validations = false
  config.boolean_style = :nested
  config.boolean_label_class = 'form__checkbox-label'
end

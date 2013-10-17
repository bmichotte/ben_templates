require 'will_paginate/view_helpers/action_view'

module WillPaginate
  module ActionView
    #def will_paginate(collection = nil, options = {})
    #  options, collection = collection, nil if collection.is_a? Hash
      # Taken from original will_paginate code to handle if the helper is not passed a collection object.
    #  collection ||= infer_collection_from_controller
    #  options[:renderer] = BenLinkRenderer
    #  super.try :html_safe
    #end

    class BenLinkRenderer < LinkRenderer
      protected

      def html_container(html)
        tag(:ul, html, container_attributes)
      end

      def previous_or_next_page(page, text, classname)
        if page
          tag(:li, link(text, page), :class => classname)
        else
          tag(:li, link(text, '#'), :class => classname + ' disabled')
        end
      end

      def page_number(page)
        if page == current_page
          tag(:li, link(page, page), :class => 'active')
        else
          tag(:li, link(page, page, :rel => rel_value(page)))
        end
      end

      def gap
        text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
        tag(:li, link(text, '#'), :class => 'disabled')
      end
    end
  end
end
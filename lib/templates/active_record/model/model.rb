<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>

  def self.search(per_page: 30, page: nil, search: nil)
	#if search.nil?
      paginate :per_page => per_page,
               :page     => page
    #else
    #  paginate :per_page   => per_page,
    #           :page       => page,
    #           :conditions => ['name like ?', "%#{search}%"]
    #end
  end
end
<% end -%>
Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'include_rich_text_js',
  insert_bottom: '[data-hook="admin_product_form_fields"]',
  text: '<%= render partial: "shared/simditor" %>'
)

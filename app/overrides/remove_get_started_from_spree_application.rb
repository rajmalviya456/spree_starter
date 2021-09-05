Deface::Override.new(virtual_path: 'spree/layouts/spree_application',
  name: 'remove_get_started_from_spree_application',
  remove: "erb[loud]:contains('spree/shared/get_started')",
)

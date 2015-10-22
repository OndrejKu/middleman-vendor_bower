require 'middleman-core'
require 'middleman-vendor_bower/version'

::Middleman::Extensions.register(:vendor_bower) do
  require 'middleman-vendor_bower/extension'
  ::Middleman::VendorBowerExtension
end

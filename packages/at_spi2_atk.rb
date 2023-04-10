require 'package'
require_relative 'at_spi2_core'

class At_spi2_atk < Package
  description At_spi2_core.description.to_s
  homepage At_spi2_core.homepage.to_s
  version At_spi2_core.version.to_s
  license At_spi2_core.license.to_s
  compatibility At_spi2_core.compatibility.to_s

  depends_on 'at_spi2_core'

  is_fake
end

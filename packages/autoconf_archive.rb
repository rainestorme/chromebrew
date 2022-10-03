require 'package'

class Autoconf_archive < Package
  description 'GNU Autoconf Archive is a collection of freely re-usable Autoconf macros.'
  homepage 'https://www.gnu.org/software/autoconf-archive/'
  version '2022.09.13'
  license 'GPL-3'
  compatibility 'all'
  source_url 'https://ftpmirror.gnu.org/autoconf-archive/autoconf-archive-2022.09.03.tar.xz'
  source_sha256 'e07454f00d8cae7907bed42d0747798927809947684d94c37207a4d63a32f423'

  binary_url({
    aarch64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/autoconf_archive/2022.09.13_armv7l/autoconf_archive-2022.09.13-chromeos-armv7l.tar.xz',
     armv7l: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/autoconf_archive/2022.09.13_armv7l/autoconf_archive-2022.09.13-chromeos-armv7l.tar.xz',
       i686: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/autoconf_archive/2022.09.13_i686/autoconf_archive-2022.09.13-chromeos-i686.tar.xz',
     x86_64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/autoconf_archive/2022.09.13_x86_64/autoconf_archive-2022.09.13-chromeos-x86_64.tar.xz'
  })
  binary_sha256({
    aarch64: '306967db6e2a7bb47bf513c1acb3406da095e570e3d9fdcbd997492c25a889d9',
     armv7l: '306967db6e2a7bb47bf513c1acb3406da095e570e3d9fdcbd997492c25a889d9',
       i686: '93a87a40b2a0ca21fa42214f2ae5d4692881d5097c4a88f08b07959e0ddc67f8',
     x86_64: 'd6882d83a90b87e744610ab4d069770fadea35cf82670ef07862c55c35fa3ee5'
  })

  def self.build
    system "#{CREW_ENV_OPTIONS} ./configure #{CREW_OPTIONS}"
    system 'make'
  end

  def self.install
    system 'make', "DESTDIR=#{CREW_DEST_DIR}", 'install'
  end
end

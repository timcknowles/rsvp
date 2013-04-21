require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax'
OpenURI::Buffer.const_set 'StringMax', 0
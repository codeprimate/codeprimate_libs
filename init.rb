require 'rfc822'
require 'array_extensions'

ActiveRecord::Base.send(:include, RFC822)

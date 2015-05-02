require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  Coveralls::SimpleCov::Formatter,
  SimpleCov::Formatter::HTMLFormatter,
]

SimpleCov.add_group 'INSTALL', 'INSTALL$'
SimpleCov.add_filter '^((?!INSTALL$).)*$' # Filter everything but INSTALL file.

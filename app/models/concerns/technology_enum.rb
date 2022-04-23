module TechnologyEnum
  extend ActiveSupport::Concern

  included do
    enum primary_technology: {
      java: 'java',
      ruby: 'ruby',
      'c++': 'c++'
    }
  end
end

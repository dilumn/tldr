# frozen_string_literal: true

module TechnologyEnum
  extend ActiveSupport::Concern

  included do
    enum primary_technology: {
      java: 'Java',
      'c++': 'C++',
      javascript: 'Javascript',
      python: 'Python',
      'c#': 'C#',
      php: 'PHP',
      android: 'Android',
      html: 'HTML',
      jquery: 'jQuery',
      css: 'CSS',
      ios: 'iOS',
      mysql: 'MySQL',
      sql: 'SQL',
      r: 'R',
      node_js: 'Node.js',
      reactjs: 'React',
      c: 'C',
      asp_net: 'ASP.NET',
      ruby_on_rails: 'Ruby on Rails',
      '.net': '.NET',
      swift: 'Swift',
      objective_c: 'Objective C',
      django: 'Django',
      angular: 'Angular',
      angularjs: 'AngularJS',
      ruby: 'Ruby',
      wordpress: 'Wordpress',
      typescript: 'Typescript',
      react_native: 'React Native',
      scala: 'Scala',
      kotlin: 'Kotlin',
      perl: 'Perl',
      go: 'Go',
      selenium: 'Selenium',
      it_infrastructure: 'IT Infrastructure',
      cloud: 'Cloud',
      virtualization: 'Virtualization',
      networking: 'Networking',
      system_administration: 'System Administration'
    }
  end
end

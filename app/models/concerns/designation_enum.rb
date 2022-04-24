module DesignationEnum
  extend ActiveSupport::Concern

  included do
    enum designation: {
      associate_software_engineer: 'associate_software_engineer',
      software_engineer: 'software_engineer',
      senior_software_engineer: 'senior_software_engineer',
      associate_tech_lead: 'associate_tech_lead',
      tech_lead: 'tech_lead',
      senior_tech_lead: 'senior_tech_lead',
      associate_architect: 'associate_architect',
      architect: 'architect',
      senior_architect: 'senior_architect',
      development_manager: 'development_manager',
      senior_development_manager: 'senior_development_manager',
      staff_software_engineer: 'staff_software_engineer',
      senior_staff_software_engineer: 'senior_staff_software_engineer',
      principle_software_engineer: 'principle_software_engineer',
      senior_principle_software_engineer: 'senior_principle_software_engineer',
      CTO: 'CTO'
    }
  end
end

# PeggedPlaceToWork

![](https://raw.githubusercontent.com/dilumn/peggedplacetowork/master/app/assets/images/logo.png)

This is the Ruby on Rails application of [peggedplacetowork.lk](https://peggedplacetowork.lk/)

### Add/change company data
#### Option 1
Submit an issue [here](https://github.com/dilumn/peggedplacetowork/issues/new)

#### Option 2
Create your own data migration pull request

```
rails generate data_migration NameOfDataMigration
```
Look for the new data migration file in `db/data_migrate/` folder.
Updated the generated file, for example
##### Add new company data

```
class NameOfDataMigration < ActiveRecord::Migration[7.0]
  def change
    Organization.create!(
      name: "Company name",
      pegged: true,
      great_place_to_work: false,
      pegged_currency: 'USD',
      remarks: 'Any remarks here'
    )
  end
end
```

##### Change existing company data

```
class NameOfDataMigration < ActiveRecord::Migration[7.0]
  def change
    Organization.find_by(name: 'Company name').update!(
      name: "Company new name",
      pegged: true,
      great_place_to_work: false,
      pegged_currency: 'USD',
      remarks: 'Any remarks here'
    )
  end
end
```

Contributions are very welcome

### Local development
prerequisites -
- Ruby 3.0.3
- Postgres

Run `bundle install` to download the dependencies

#### Database setup
```
rake db:create
rake db:migrate
```

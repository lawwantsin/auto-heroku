### SETUP

`setup.sh` will download the heroku toolbelt.  Which is an executable that runs the rest of the commands in create.sh and clean.sh
it will then log you in to heroku.  Setup a new account here.  
https://signup.heroku.com/login
No purchase necessary.

### USEAGE

So, you've got a github repo with an app in it.

Example: https://github.com/lawwantsin/bev_test.git

```
git clone https://github.com/lawwantsin/bev_test.git
cd bev_test  (now within the app's root directory)
../auto-heroku/create.sh NAME  (if this repo is under auto-heroku in a sibling directory)
Exmaple: ../auto-heroku/create.sh penguins-rule
```

This will:

1. Create the app in Heroku
2. Add the *heroku* remote to the `.git/config`
3. Push the app to Heroku, which does the following
  1. Builds the app,
  2. Installs all bundled gems & an empty Postgres database.
4. Runs the migrations to build the tables.
5. Opens the app in your default browser.

Final URL will be (in this example) https://penguins-rule.herokuapp.com.

### CLEAN UP

After the review process.
From within the auto-heroku directory.
`./clean.sh penguins-rule`

Will remove the app from your account.

### GOTCHA

Only one gotcha.  Since Heroku uses Postgres instead of MySQL, the `mysql2` gem is not neccessary.  But the `pg` gem is.
Will error on build without the `pg` gem in the `Gemfile`.  So, add that to the requirements and we're good to go.

> Law
>> law@cinemasetfree.com

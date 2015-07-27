### SETUP

`setup.sh`

1. will download the [Heroku Toolbelt](https://toolbelt.heroku.com/).  
The toolbelt is just an executable that performs the rest of the commands in `new.sh` and `clean.sh`
2. It will then prompt you to login to Heroku.

Setup a new account here: https://signup.heroku.com/login
No purchase necessary.

3. it will then make all `.sh` scripts in this directory executable.
Optionally, add this directory to your $PATH or dump them in a directory that's already in your PATH.

### USEAGE

`new.sh`

So, you've got a github repo with an app in it.

Example: https://github.com/lawwantsin/bev_test.git

```
git clone https://github.com/lawwantsin/bev_test.git
cd bev_test  (now within the app's root directory)
../auto-heroku/new.sh {MY-APP-NAME} (if these scripts are is under `auto-heroku` in a sibling directory)
```
Example: `../auto-heroku/create.sh penguins-rule`

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

`clean.sh`

After the review process is over and you don't want this app cluttering your Heroku account.
From within the auto-heroku directory.
`./clean.sh penguins-rule`

Will remove the app from your account.

### GOTCHA

Only one gotcha.  Since Heroku uses Postgres instead of MySQL, the `mysql2` gem is not neccessary.  But the `pg` gem is.
Will error on build without the `pg` gem in the `Gemfile`.  So, add that to the requirements and we're good to go.

> Law
> law@cinemasetfree.com

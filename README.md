ATM Challenge 2020: Carlos and Johan




The code - 

//This section is about what problem you are trying to solve with the code. And how it is solving it. This section provides a type of //synopsis or a summary. If you have a deployed application you can add the URL in this section.

The following program gives the user the service of a virtual ATM machine.

-The ATM machine allows the user to ḿake withdraw and deposit money to the personal account.
-The ATM machine makes sure to that the money will be withdrawn or deposited to a specific account.
-The ATM machine allows a withdraw only if there is enough balance in the account.
-The ATM machine has a start Fund amount of 1000.
-The ATM machine allows the user to create an account.
-The ATM machine allows the user to deposit before creating an account.



Dependencies - 
What gems, frameworks or tools your code runs on

-The project uses Gemfiles and bundler as dependencies. 
-The project is being developed in TDD using Rspec.
-The project is divided in two main folders, the '/lib' folder and the '/spec' folder:
           '/lib/ : The implementation code is in this folder and it contains the three file of the Atm, Person and Account Class which compose the whole code.
           '/spec/' : The test files are here and there is one spec file for each Claas file in /lib folder.

Working procedure and Share Repository:

The ATM machine project is developed and being stored in Github.
Carltesio/github.com has started the repository and has been forked by johanbounce/github.com.
Every new development had been added constantly to the repository by both dewvelopers.



How to setup the code and run it:

-Install bundler : https://bundler.io/

Instructions - The different steps to run the program



Acknowledgements:

The code was implemented following inputs from the Craft Academy learning material and partially with solutions of our own.

License:
The follwing code is open source as part of a  learning process type of project.
Feel free to implement and/or suggest any modifications to it.

Instructions:

Open up your terminal 
Start running IRB

$ irb

Load all files from /lib

$ load 'lib/atm.rb
$ load 'lib/account.rb
$ load 'lib/person.rb

Create an Atm

$ atm = Atm.new

Create a Person and give it a name

$ the_person = Person.new(name: "johan")

Give the person some cash

$ the_person.cash = 1000

Create an Account for the Person, and make sure that the bank gave you a four digit pin code when opening the account, and that the expiration date has not past

$ the_person.create_account

Set a purpose for opening account

$ the_person.account.purpose = "going to the pub after week 1 of CraftAcademy"

Deposit som cash in to the account

$ the_person.deposit(500)

Check so that the Atm is not a fake one, by checking your Account balance

$ the_person.account.balance

Phew! Now withdraw some money. For that to complete you need to choose your amount, enter your pin code, have a valid account, and use a actual atm

$ the_person.withdraw(amount: 250, pin: the_person.account.pin_code, account: the_person.account, atm: atm)

Change the purpose for the account 

$ the_person.account.purpose = "Save the rest of the money until you have finished week 2 of CraftAcademy"

Deactivate your account

$ the_person.account.deactivate

Activate your account again 

$ the_person.account.activatethe







Authors:
https://github.com/Carltesio
https://github.com/johanbounce

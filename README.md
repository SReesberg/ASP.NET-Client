# ASP.NET-Client
BillionBankInterface: 

The client-side application presenting the GUI and handling data-capture.
The goal of these two applications in tandem is to simulate a banking application where the user can sign up for membership, log in, 
create accounts and perform transactions. Once the user is finished, they can log out. The ability to view their account details, 
edit user details and displaying recent transactions is also fully realized.

As for the “front-end”, BillionBankInterface calls WebMethods for all the user and database-related functionality. The only coding done client-side is making use of the returned values from the Web Service, as well as manipulating the GUI itself to display these returned values. The only notable exception is the use of Session variables created client-side in order to identify the user.
The interface consists of several pages:
•	AccountPage – the “home” page once a user has logged in.
•	Header – a universal header created once and used in every other page. Provides hyperlinks to relevant pages.
•	LogIn – here the user enters their details in order to log in and gain access to security-sensitive pages.
•	SignUp – the user enters their personal details here for initial registration.
•	ViewAccount – the user can view their accounts, and details associated with each selected account.
•	CreateAccount – the user can create bank accounts here.
•	Transactions – the user can perform transactions between accounts here.
•	ChangePasswordCheck – user verification in order to change their password.
•	ChangePasswordSet – post verification, the user can choose their new password.
•	LogOut – ends the session once the user chooses to.
•	ChangeUserInfo – the user can update their personal details here.
The interface does feature a plethora of validators when it comes to user input ranging from required validator controls to regular expression validator controls.

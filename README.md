# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## User Stories
As a customer service representative, I want to search for existing organizations based on known criteria to retrieve all matches for that criteria so that I may review all details associated with the organization. Details below:
* Organization ID
* URL of their profile
* Organization name
* Domain names belonging to the organization
* When it was created
* Details of the organization type
* Whether the organization shares tickets
* Tags associated with the organization

As a customer service representative, I want to search existing tickets based on known criteria to retrieve all matches for that criteria so that I may see all of the details of that ticket. Field details below:
* Ticket ID
* URL location of the ticket
* External ID to share with customers
* The type of ticket
* A short subject of the ticket
* A description of the details included in the ticket
* The priority of the ticket
* The current status of the ticket
* The ID of the user who submitted the ticket
* The ID of the user the ticket is assigned to
* The ID of the organization the ticket belongs to
* Tags associated with the ticket
* Whether it has existing incidents
* When the ticket is due
* How the ticket was submitted

As a customer service representative, I want to search existing users based on known criteria to retrieve all matches for that criteria so that I may see all of the details of that user. Field details below:
* User ID
* URL location of the user profile
* External ID to share with customers
* The user's name
* Any alias assigned to the user
* When the user was created
* Whether the user is active
* Whether the user has been verified
* Whether the user is shared with other users
* Which region the user is located
* What timezone the user is in
* When the user last logged in
* The email contact of the user
* The phone contact of the user
* Any email signatures tied to the user
* The organization ID of the user's organization
* Tags associated with the user
* Whether the user is currently suspended
* The role the user has

As a customer service representative, I want to search for fields that are empty for any of the above so that I can ensure data is appropriately filled in.

As a customer service representative, I want to know if no results are returned so that I can review whether it needs to be created in the system or not.

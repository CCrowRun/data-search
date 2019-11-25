# Data Search Application
## Application languages and Versions
* Rails version 5.2.3
* Ruby version 2.5.3
* JQuery (rails) version 4.3.5

## Workflows
Currently, the workflow is complete so you can:
* Select Organization from the 3 displayed buttons
* Select the radio button of the field you wish to enter
* Submit a text value entered into that field

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

## Design Decisions
### Ruby on Rails
Since the majority of my recent coursework in Ruby, Ruby rose to the top for solving this problem. I have done minor scripts in Python for XML files, but I have only completed [one project](https://github.com/CCrowRun/treasuregram-codeschool) tying the front-end to the back-end in Python, and my comfort level with Ruby was higher.

I looked into the possibility of decoupling Ruby from Rails for this, since Rails felt it could add unnecessary complexity. However, it seemed that connecting Ruby to the front end either asked for a higher understanding of Rack than I had, or connecting another framework like Sinatra instead of Rails. I decided to continue with the Rails framework, to support communication between the front-end user-entry and querying the back-end.

### JQuery
I added JQuery to support the conditional showing and hiding of the various form-entries based on which search type the user needed. I’m very familiar with that set-up, and felt comfortable using it to handle those light-weight tasks.

### Controller
Based on the size of the files and the relative similarity, I decided to build one controller to handle all searches, with the intention of adding methods for each data file. This would allow flexibility for handling file locations, while allowing easily shared helper methods. I figured I could refactor out helper methods to pull out similar logic as needed.

### Database
I did find that PostGreSQL can support JSON transformation. In my quick research, it appeared to work best with searching individual data fields, and would only work if the database was seeded with the provided JSON files. That seemed outside of scope, so I loaded the JSON scripts to the asset folder, and flagged a handful of articles below if I chose to move it to the database:
https://blog.codeship.com/unleash-the-power-of-storing-json-in-postgres/
https://www.postgresql.org/docs/9.3/functions-json.html

### Lessons Learned
In my heart of hearts I wish I had just gotten up-to-date with the updates to AngularJS and dropped Ruby on Rails. I built my [wedding site](https://github.com/CCrowRun/tom-and-carrie-wedding) in AngularJS, and it would have supported:
* Creating simple conditional views based on which option the user selected
* Familiar validation
* Easy JSON handling
The main reason I did not pursue that was because I’m more familiar with RSpec, FactoryBot and Capybara for Rails than I am testing tools for JavaScript. Since I did not take full advantage of those tools in rails, however, I think it would have been a valuable possibility.

This also brought to light several growth opportunities - mainly, reviewing networking protocols and more detail on how HTTP requests fit into the work I did.

## Next Steps
* Research HTTP requests to confirm what AJAX is sending to the controller
* Review controller org_search method to confirm parsing of the correct JSON file to a hash is succeeding
* Use kay from created hash set to search for items that match the user-entered hash set
* Revise JQuery to dyamically update the bottom of the page with search results
* Expand controller to include a similar method for users and tickets
* Run linter against results


# Resources Web App

---

### Description
This is a web app that consumes a microservice called Resources Service to list all the resources in (Credential Registry API)[https://staging.credentialengineregistry.org/envelopes].

---

## Usage (without docker)
- Clone this project locally
- Run `bundle install`
- Run `rerun 'ruby router.rb -p 4321'`
- Go to (localhost:4567)[http://localhost/4321] and you will see the list of resources
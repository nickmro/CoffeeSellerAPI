<img src="http://res.freestockphotos.biz/pictures/16/16192-illustration-of-a-hot-cup-of-coffee-pv.png" align="right" width="60px">

# Coffee Seller API

This respository contains the source code for The Coffee Seller API, a REST API that serves up data on a generic coffee seller's products.

Production application: http://coffeeseller.herokuapp.com/

1. [About This Document](#about-this-document)
2. [The Scenario](#the-scenario)
3. [User Stories](#user-stories)
4. [Data Models](#data-models)
5. [The Project](#the-project)
6. [Testing](#testing)
7. [Using the application](#using-the-application)
8. [Setup](#setup)

### About This Document

The following document - rather than serving as strict documentation - outlines my process of developing an application in order to lend some transparency into my development practices. You will find in it the steps that I followed to develop the application as well as some insight into my thought process.

### The Scenario

My client has requested that I build an application that lists his/her company's product catalogue. The company sells coffee machines and coffee pods. Each machine can only load a particular type of coffee pod. Likewise, each coffee pod can only be loaded into a certain machine.

In an effort to increase revenue, the client would also like to cross-sell pods and machines. For example, if a user is viewing a coffee pod product page, the page should also display that machines that can load that particular coffee pod. If a user is viewing a coffee machine product page, the page should display each of the coffee pod flavors available for that machine.

The client has provided a couple of other requirements, including:
- There must be a page that displays all products of a particular product type (large machines, espresso machines, small pods, etc.)
- There must be a page that lists all pods of a particular flavor

### User Stories

Based on these requirements, I identified four user stories that need to be fulfilled to consider the application deliverable:

1. As a user I should be able to view a product by SKU
2. As a user I should be able to view a list of all items of a product type
3. As a user I should be able to view all coffee pods with a given flavor
4. As a user I should be able to view all coffee pods with a given flavor and product type
5. As a user I should see a list of related items for each product
    - Related items for a coffee pod are defined as all machines that can load that coffee pod
    - Related items for a coffee machine are defines as the smallest quantity pack of all pods that can be loaded into that machine

For the ticketing application, I chose to use [Pivotal Tracker](https://www.pivotaltracker.com). The project page is public and may be viewed [here](https://www.pivotaltracker.com/n/projects/1936341).

### Data Models

Before beginning a project, I like to document the model relationships represented by the application. This allows me to get a sense of the big picture, ruminate over how each of the pieces fit together, and identify any potential pitfalls before getting too deep into development.

<p align="center" style="padding-top: 20px; padding-botton: 30px;"><img src="https://raw.githubusercontent.com/nickmro/CoffeeSellerAPI/master/app/assets/images/data_models.png" /></p>

Once I am satisfied with the model, I am ready to jump into development.

### The Project

For this project, I decided to build a Ruby on Rails REST API application with a MongoDB database. Providing an interface to the application's back end can be beneficial for many reasons, notably:

1. We can use the same interface for multiple platforms. That means we can use it for a web application, an iOS application, or an Android application, among others.
2. We can, eventually, open up this interface to third parties who may then display the company's catalogue in their own applications, and consequently, reach a wider audience.

### Testing

I practiced Test-Driven Development (TDD) throughout the project. I find testing beneficial when possible as not only does it help to ensure that the app does not break during the development process, it also helps ensure that business requirements are met and serves as a form of documentation for developers who may inherit the project in the future.

### Using the application

No authentication credentials are required to use the application, simply type in the endpoint URL into your browser or `curl` it in your command line tool.

Four endpoints have been created for this application, each with a unique set of data:

**Endpoints**
Each endpoint is preceded by: `http://coffeeseller.herokuapp.com/api`

| Path | Description |
|---|---|
| `/products/` | returns a list of all available products |
| `/products/:sku` | returns the product for a given sku |
| `/product_types/:product_type/products` | returns a list of a product type's products |
| `/flavors/:flavor/coffee_pods` | returns a list of coffee pods for a given flavor (smallest quantity for type) |

**Parameters**

| Parameter | Description |
|---|---|
| `:sku` | the product SKU number |
| `:product_type` | the product type slug |
| `:flavor` | the flavor slug |

**Example Endpoints**

| Description | Endpoint |
|---|---|
| All products| http://coffeeseller.herokuapp.com/api/products/ |
| Small Coffee Pod, 3 dozen, PSL | http://coffeeseller.herokuapp.com/api/products/CP023 |
| All large coffee machines | http://coffeeseller.herokuapp.com/api/product_types/coffee-machine-large/products |
| All hazelnut coffee pods (smallest quantity per type) | http://coffeeseller.herokuapp.com/api/flavors/hazelnut/coffee_pods |

### Setup

1. Clone the repo
```
git clone git@github.com:nickmro/CoffeeSellerAPI.git
```

2. Navigate to project directory
```
cd CoffeeSellerAPI
```

3. Install dependencies
```
bundle installl
```

4. Seed the database
```
rake db:seed
```

5. Run the server
```
rails s
```

6. Run a MongoDB instance
```
mongod
```

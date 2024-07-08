
Farm-to-Consumer Platform Documentation
This document outlines the functionality and user experience of a web application that connects farmers directly with consumers, 
eliminating the need for middlemen.

1. System Overview

The platform consists of two main user groups:

Farmers: They can register, create profiles, upload product information and photos, 
manage inventory, process orders, and receive payments directly from consumers.
Consumers: They can browse available products from various farms, view product details and photos, 
add items to their cart, place orders, and make secure payments.

2. User Roles and Permissions
Farmers:
Can register and create a farm profile.
Can upload product information (name, description, price, stock).
Can upload product photos.
Can manage inventory levels.
Can view and manage incoming orders (accept, reject, fulfill).
Can view order history and track sales performance.

Consumers:
Can browse available products from different farms.
Can view product details and photos.
#Can add items to their cart and manage quantities.
#Can place orders and make secure payments.
#Can view order history and track order status.

3. Functional Requirements
	Farmer Registration:
	Farmers can create accounts with basic information (username, password, email).
	Farmers can provide details about their farms (name, description, location).

Product Management:
Farmers can add new products with descriptions, pricing, and stock availability.
Farmers can upload multiple photos for each product.
	#Farmers can edit existing product information.
	#The system validates product information for completeness and accuracy.
Inventory Management:
Farmers can track product stock levels.
The system automatically updates stock levels after successful order fulfillment.

Order Management:
	Consumers can place orders by adding products to their cart and checking out.
	Orders include details like product names, quantities, prices, and total amount.
	Farmers receive notifications for new orders.
	Farmers can view order details, accept or reject orders, and mark orders as fulfilled.

Payment Processing:
	The platform integrates with a secure mobile money payment gateway (e.g., Orange Money, MTN Mobile Money).
	Consumers can seamlessly pay for their orders using their mobile wallets.
	Farmers receive payments directly into their mobile money accounts.

Search and Browse:
	Consumers can easily browse products from different farms.
	The system provides search functionality to find specific products.
	Product listings can be filtered by category, location, or other relevant criteria.

4. Data Model

The platform has database tables to store user information, farm details, 
product information, orders, and payment data. Here's a basic example:

	users (stores user information)
	farms (stores farm details linked to users)
	products (stores product information linked to farms)
	orders (stores order details with products, customers, and status)
	order_items (links orders with specific product quantities)
	payments (stores payment information for each order)

5. Security Considerations

	Secure password storage using hashing and salting.
	User authentication and authorization to control access to different functionalities.
	Secure communication channels (HTTPS) for data transmission.
	Secure storage of payment information.

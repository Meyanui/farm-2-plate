create table users(
	user_id serial PRIMARY KEY,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	phone_number VARCHAR(20) not null,
	user_email VARCHAR(255) not null
);

INSERT INTO users (first_name, last_name, phone_number, user_email)
VALUES
  ('John', 'Doe', '+1234567890', 'john.doe@example.com'),
  ('Jane', 'Smith', '+9876543210', 'jane.smith@example.com'),
  ('Michael', 'Brown', '+0123456789', 'michael.brown@example.com'),
  ('Alice', 'Johnson', '+5678901234', 'alice.johnson@example.com'),
  ('David', 'Miller', '+3456789012', 'david.miller@example.com'),
  ('Sarah', 'Williams', '+7890123456', 'sarah.williams@example.com'),
  ('Emily', 'Garcia', '+2345678901', 'emily.garcia@example.com'),
  ('Matthew', 'Davis', '+6789012345', 'matthew.davis@example.com');


create table farms(
	farm_id serial PRIMARY KEY,
	farm_name VARCHAR(255) not null,
	farm_description TEXT, 
	user_id INT REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE farms (
  farm_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id) on delete cascade,
  farm_name VARCHAR(255) NOT NULL,
  farm_description TEXT);

INSERT INTO farms (user_id, farm_name, farm_description)
VALUES
  (1, 'Sunnyside Farm', 'A family-owned farm specializing in organic vegetables'),
  (2, 'Green Meadows Ranch', 'Raising grass-fed cattle and producing fresh dairy products'),
  (3, 'Honeybee Hive', 'Apiary focused on sustainable beekeeping and local honey production'),
  (4, 'Apple Orchard', 'Growing a variety of delicious apple cultivars for fresh eating and baking'),
  (5, 'Coastal Aquaponics', 'Combining aquaculture and hydroponics for sustainable fish and vegetable production'),
  (1, 'Happy Hens Coop', 'Raising free-range chickens for fresh eggs'),
  (3, 'Wildflower Meadow', 'Providing pollinator habitat and producing specialty flower varieties'),
  (2, 'Hilltop Vineyard', 'Growing grapes for crafting award-winning wines');


	
CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  description TEXT,
  photo_url VARCHAR(2048),
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (product_name, description, photo_url, price, stock_quantity)
VALUES
  ('Wireless Headphones', 'Superior sound quality with comfortable fit', 'https://exman.com/headphones.jpg', 79.99, 25),
  ('Running Shoes', 'Lightweight and breathable for your best performance', 'https://shoeman.com/shoes.jpg', 54.99, 12),
  ('Laptop Backpack', 'Durable and spacious for carrying your essentials', 'https://jackjack.com/backpack.jpg', 39.99, 18),
  ('Bluetooth Speaker', 'Portable and powerful sound for any occasion', 'https://speaking.com/speaker.jpg', 49.99, 8),
  ('Coffee Maker', 'Brew a perfect cup every time with this automatic machine', 'https://makecoff.com/coffeemaker.jpg', 99.99, 5),
  ('Water Bottle', 'Stay hydrated in style with this reusable bottle', 'https://liquor.com/waterbottle.jpg', 14.99, 30),
  ('Fitness Tracker', 'Monitor your activity and progress towards your goals', 'https://jeany.com/fitnesstracker.jpg', 29.99, 15);





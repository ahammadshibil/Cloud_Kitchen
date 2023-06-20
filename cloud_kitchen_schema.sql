Table city {
  city_id varchar(10) [pk]
  city_name varchar(40)
}

Table Customers {
  CustomerID int [pk]
  Password varchar(255)
  cus_name varchar(255)
  PhoneNumber bigint
  EmailAddress varchar(255)
  DOB date
  Gender char(1) [note: 'M or F']
  address varchar(255)
}

Table branch {
  branch_id varchar(20) [pk]
  location varchar(40)
  kitchen_capacity int
  manager_id varchar(20) [ref: > staff.staff_id]
  city_id varchar(10) [ref: > city.city_id]
}

Table staff {
  staff_id varchar(20) [pk]
  sname varchar(40) [not null]
  srole varchar(40) [not null]
  email_id varchar(40)
  phone_number bigint [not null]
  spassword varchar(40) [not null]
  address varchar(255) [not null]
  dob date [not null]
  branch_id varchar(20) [ref: > branch.branch_id]
  staff_gender char [note: 'M for Male, F for Female']
  salary decimal(10,2) [note: 'Salary for the Manager']
}

Table inventory {
  ingredient_id varchar(40) [pk]
  ingredient_name varchar(40)
  quantity int
  unit varchar(20)
  branch_id varchar(20) [ref: > branch.branch_id]
}

Table ingredient_menu {
  ingredient_id varchar(40) [ref: > inventory.ingredient_id]
  item_id varchar(40) [ref: > menu.item_id]
}

Table offers {
  offer_id varchar(40) [pk]
  description text
  valid_from date
  valid_to date
  discount_percentage decimal(4,2)
  applicable_items varchar(40)
}

Table payment {
  payment_id varchar(40) [pk]
  transaction_id varchar(40) [ref: > transactions.transaction_id]
  payment_method varchar(40)
  payment_status varchar(20)
  payment_date date
}

Table kitchen_staff {
  kitchen_staff_id varchar(20) [pk]
  staff_id varchar(20) [ref: > staff.staff_id]
  specialization varchar(40)
  work_shift enum('Morning', 'Afternoon', 'Evening', 'Night')
  pay_per_hour decimal(6,2) [note: 'Pay per hour for the kitchen staff']
}

Table orders {
  order_id varchar(40) [pk]
  status varchar(40)
  item_id varchar(40) [ref: > menu.item_id]
  quantity int
  arrival_time timestamp
  item_type varchar(40)
  customer_id int [ref: > Customers.CustomerID]
  branch_id varchar(20) [ref: > branch.branch_id]
  staff_id varchar(20) [ref: > staff.staff_id]
}

Table transactions {
  transaction_id varchar(40) [pk]
  total_amount int
  card_number bigint
  card_type varchar(40)
  customer_id int [ref: > Customers.CustomerID]
  order_id varchar(40) [ref: > orders.order_id]
}

Table menu {
  item_id varchar(40) [pk]
  item_name varchar(40)
  description text
  protein_grams int
  protein_percentage decimal(4,2)
  further_description text
  category varchar(40)
  price decimal(6,2)
  carbs decimal(6,2)
  fat decimal(6,2)
}

Table order_items {
  order_id varchar(40) [ref: > orders.order_id, pk]
  item_id varchar(40) [ref: > menu.item_id, pk]
  quantity int
}

Table reviews {
  review_id varchar(40) [pk]
  customer_id int [ref: > Customers.CustomerID]
  order_id varchar(40) [ref: > orders.order_id]
  rating decimal(2,1)
  comments text
}

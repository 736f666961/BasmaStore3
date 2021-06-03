-- the order of values is related to the name of field.
-- Updating is necessary, if the name is changed


INSERT INTO "public"."order_main" VALUES (2147483643, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:20.439', 100.00, 0, '2018-03-15 12:52:20.439');
INSERT INTO "public"."order_main" VALUES (2147483645, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:29.007', 4.00, 0, '2018-03-15 12:52:29.007');
INSERT INTO "public"."order_main" VALUES (2147483641, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:07.428', 180.00, 2, '2018-03-15 12:52:53.664');
INSERT INTO "public"."order_main" VALUES (2147483647, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:35.289', 2.00, 2, '2018-03-15 12:52:55.919');
INSERT INTO "public"."order_main" VALUES (2147483649, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:58:23.824', 150.00, 0, '2018-03-15 12:58:23.824');
INSERT INTO "public"."order_main" VALUES (2147483642, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:21.135', 4.00, 2, '2018-03-15 13:02:09.023');
INSERT INTO "public"."order_main" VALUES (2147483640, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:16.271', 20.00, 2, '2018-03-15 13:02:52.067');
INSERT INTO "public"."order_main" VALUES (2147483648, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:06.943', 134.00, 1, '2018-03-15 13:02:56.498');

-- ----------------------------
-- Table structure for product_category

-- ----------------------------
-- Records of product_category
-- ----------------------------
-- 0    :   T-Shirts
-- 1    :   Sweaters
-- 2    :   Jeans
-- 3    :   Jackets
INSERT INTO "public"."product_category" VALUES (2147483641, 'T-Shirts', 0, '2018-03-09 23:03:26', '2018-03-10 00:15:27');
INSERT INTO "public"."product_category" VALUES (2147483645, 'Sweaters', 1, '2018-03-10 00:26:05', '2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (2147483642, 'Jeans', 2, '2018-03-10 00:15:02', '2018-03-10 00:15:21');
INSERT INTO "public"."product_category" VALUES (2147483644, 'Jackets', 3, '2018-03-10 01:01:09', '2018-03-10 01:01:09');

-- id,
-- category_type,
-- count,
-- product_description,
-- product_icon,
-- product_id,
-- product_name,
-- product_price,
-- product_stock,
-- cart_user_id,
-- order_id
-- ----------------------------
-- Records of product_in_order
-- ----------------------------
INSERT INTO "public"."product_in_order" VALUES (2147483642, 0, 1,'Best Woman T-Shirts Ever', 'https://images.pexels.com/photos/761963/pexels-photo-761963.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0001', 'W-Tshirts', 30.00,96,NULL, 2147483641);
INSERT INTO "public"."product_in_order" VALUES (2147483644, 0, 1, 'Best Man T-Shirts Ever', 'https://images.pexels.com/photos/1656684/pexels-photo-1656684.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0002', 'M-Tshirts', 20.00,195,NULL, 2147483643);
INSERT INTO "public"."product_in_order" VALUES (2147483643, 0, 1, 'Best Children T-Shirts Ever', 'https://images.pexels.com/photos/5560485/pexels-photo-5560485.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0003', 'Ch-Tshirts', 30.00,96,NULL, 2147483648);

INSERT INTO "public"."product_in_order" VALUES (2147483642, 1, 1,'Best Woman Sweaters Ever', 'https://images.pexels.com/photos/6647869/pexels-photo-6647869.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0004', 'W-Sweaters', 30.00,96,NULL, 2147483641);
INSERT INTO "public"."product_in_order" VALUES (2147483644, 1, 1, 'Best Man Sweaters Ever', 'https://images.pexels.com/photos/5100247/pexels-photo-5100247.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0005', 'M-Sweaters', 20.00,195,NULL, 2147483643);
INSERT INTO "public"."product_in_order" VALUES (2147483643, 1, 1, 'Best Children Sweaters Ever', 'https://images.pexels.com/photos/3154330/pexels-photo-3154330.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0006', 'Ch-Sweaters', 30.00,96,NULL, 2147483648);

INSERT INTO "public"."product_in_order" VALUES (2147483642, 2, 1,'Best Woman Jeans Ever', 'https://images.pexels.com/photos/1550049/pexels-photo-1550049.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0007', 'W-jeans', 30.00,96,NULL, 2147483641);
INSERT INTO "public"."product_in_order" VALUES (2147483644, 2, 1, 'Best Man Jeans Ever', 'https://images.pexels.com/photos/1018911/pexels-photo-1018911.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0008', 'M-jeans', 20.00,195,NULL, 2147483643);
INSERT INTO "public"."product_in_order" VALUES (2147483643, 2, 1, 'Best Children Jeans Ever', 'https://images.pexels.com/photos/5325700/pexels-photo-5325700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0009', 'CH-jeans', 30.00,96,NULL, 2147483648);

INSERT INTO "public"."product_in_order" VALUES (2147483642, 3, 1,'Best Woman Jackets Ever', 'https://images.pexels.com/photos/6647895/pexels-photo-6647895.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0011', 'W-Jackets', 30.00,96,NULL, 2147483641);
INSERT INTO "public"."product_in_order" VALUES (2147483644, 3, 1, 'Best Man Jackets Ever', 'https://images.pexels.com/photos/6315298/pexels-photo-6315298.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 'B0012', 'M-jackets', 20.00,195,NULL, 2147483643);
INSERT INTO "public"."product_in_order" VALUES (2147483643, 3, 1, 'Best Children Jackets Ever', 'https://images.pexels.com/photos/4148842/pexels-photo-4148842.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'B0013', 'CH-jackets', 30.00,96,NULL, 2147483648);

-- ----------------------------
-- Records of product_info
-- ----------------------------
-- 0    :   T-Shirts
-- 1    :   Sweaters
-- 2    :   Jeans
-- 3    :   Jackets
INSERT INTO "public"."product_info" VALUES ('B0001', 0, '2000-03-10 10:37:39', 'Woman T-shirts', 'https://images.pexels.com/photos/761963/pexels-photo-761963.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'W-Tshirts', 10.00, 1, 200, '2012-03-10 19:42:02');
INSERT INTO "public"."product_info" VALUES ('B0002', 0, '2005-03-10 10:35:43', 'Man T-shirts', 'https://images.pexels.com/photos/1656684/pexels-photo-1656684.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'M-Tshirts', 20.00, 0, 195, '2014-03-10 10:35:43');
INSERT INTO "public"."product_info" VALUES ('B0003', 0, '2014-03-10 10:39:29', 'Children T-shirts', 'https://images.pexels.com/photos/5560485/pexels-photo-5560485.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'CH-Tshirts', 30.00, 0, 199, '2015-03-10 10:39:32');

INSERT INTO "public"."product_info" VALUES ('B0004', 1, '2013-03-10 10:37:39', 'Woman Sweaters', 'https://images.pexels.com/photos/6647869/pexels-photo-6647869.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'W-Sweaters', 10.00, 1, 200, '2010-03-10 19:42:02');
INSERT INTO "public"."product_info" VALUES ('B0005', 1, '2024-03-10 10:35:43', 'Man Sweaters', 'https://images.pexels.com/photos/5100247/pexels-photo-5100247.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'M-Sweaters', 20.00, 0, 195, '2017-03-10 10:35:43');
INSERT INTO "public"."product_info" VALUES ('B0006', 1, '2015-03-10 10:39:29', 'Children Sweaters', 'https://images.pexels.com/photos/3154330/pexels-photo-3154330.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'CH-Sweaters', 30.00, 0, 199, '2011-03-10 10:39:32');

INSERT INTO "public"."product_info" VALUES ('B0007', 2, '2016-03-10 10:37:39', 'Woman Jeans', 'https://images.pexels.com/photos/1550049/pexels-photo-1550049.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'W-Jeans', 10.00, 1, 200, '2018-03-10 19:42:02');
INSERT INTO "public"."product_info" VALUES ('B0008', 2, '2027-03-10 10:35:43', 'Man Jeans', 'https://images.pexels.com/photos/1018911/pexels-photo-1018911.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'M-Jeans', 20.00, 0, 195, '2011-03-10 10:35:43');
INSERT INTO "public"."product_info" VALUES ('B0009', 2, '2018-03-10 10:39:29', 'Children Jeans', 'https://images.pexels.com/photos/5325700/pexels-photo-5325700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'CH-Jeans', 30.00, 0, 199, '2012-03-10 10:39:32');

INSERT INTO "public"."product_info" VALUES ('B0011', 3, '2012-03-10 10:37:39', 'Woman Jackets', 'https://images.pexels.com/photos/6647895/pexels-photo-6647895.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'W-Jackets', 10.00, 1, 200, '2018-03-10 19:42:02');
INSERT INTO "public"."product_info" VALUES ('B0012', 3, '2024-03-10 10:35:43', 'Man Jackets', 'https://images.pexels.com/photos/6315298/pexels-photo-6315298.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 'M-Jackets', 20.00, 0, 195, '2017-03-10 10:35:43');
INSERT INTO "public"."product_info" VALUES ('B0013', 3, '2013-03-10 10:39:29', 'Children Jackets', 'https://images.pexels.com/photos/4148842/pexels-photo-4148842.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'CH-Jackets', 30.00, 0, 199, '2017-03-10 10:39:32');


-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (2147483641, 't', '3200 West Road', 'customer1@email.com', 'customer1', '$2y$12$XCjfGS6AY6N5xpUhSJX9yutkoUXU3y0uNxUiyaArYp.W.Tg5LM3XW', '123456789', 'ROLE_CUSTOMER');
INSERT INTO "public"."users" VALUES (2147483642, 't', '2000 John Road', 'manager1@email.com', 'manager1', '$2y$12$2z2DT/6DR3KqQMVFj/q3VueoiNkUDw12zdEwZ/O5iBAE7jR5oQSMm', '987654321', 'ROLE_MANAGER');
INSERT INTO "public"."users" VALUES (2147483643, 't', '222 East Drive ', 'employee1@email.com', 'employee1', '$2y$12$Ah.Km5FX6HGurG7vl1nNf.FpfjbcAguMDq9Ch4U8HwQGiUVvD.XqO', '123123122', 'ROLE_EMPLOYEE');

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO "public"."cart" VALUES (2147483641);
INSERT INTO "public"."cart" VALUES (2147483642);
INSERT INTO "public"."cart" VALUES (2147483643);

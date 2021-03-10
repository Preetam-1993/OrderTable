--Creating the Table Order_Shipment to store the timeline details of orders

CREATE TABLE order_shipment
(
    order_id                NUMBER(10) PRIMARY KEY,
    schema_id               CHAR(10) NOT NULL,
    actual_dispatch_date    DATE NOT NULL,
    created                 DATE NOT NULL,
    CONSTRAINT order_id_FK
    FOREIGN KEY (order_id)
    REFERENCES order_timeline(order_id)
);

DESC order_shipment ;
# Normalization to Third Normal Form (3NF)

## Objective
Ensure the Airbnb database schema is properly normalized to eliminate redundancy and maintain data integrity by applying the principles of 1NF, 2NF, and 3NF.

---

## Entities Reviewed

### 1. User
- **1NF**: All attributes are atomic.
- **2NF**: Non-key fields fully dependent on `user_id`.
- **3NF**: No transitive dependencies.

### 2. Property
- **1NF**: Fields like `name`, `location`, `pricepernight` are atomic.
- **2NF**: All fields fully depend on `property_id`.
- **3NF**: No derived data or transitive dependency.

### 3. Booking
- **1NF**: Atomic attributes.
- **2NF**: All non-key attributes relate to `booking_id`.
- **3NF**: No transitive dependency (e.g., `total_price` is calculated but valid as stored for record-keeping).

### 4. Payment
- **1NF**: No repeating groups.
- **2NF**: All attributes depend on `payment_id`.
- **3NF**: No non-key attribute depends on another non-key attribute.

### 5. Review
- **1NF**: All values are atomic.
- **2NF**: Attributes depend on `review_id`.
- **3NF**: No unnecessary dependencies between non-key fields.

### 6. Message
- **1NF**: Fields like `message_body` are atomic.
- **2NF**: All fields depend on `message_id`.
- **3NF**: No transitive dependencies.

---

## Conclusion
The current schema adheres to Third Normal Form. All non-key attributes in each entity depend solely on the primary key, and there are no transitive dependencies. This ensures minimal redundancy and high data integrity.

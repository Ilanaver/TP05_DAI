-- 1. Insertar datos en la tabla Provinces
INSERT INTO public.provinces (id, name, full_name, latitude, longitude, display_order) VALUES
(1, 'Province1', 'Province Full Name 1', 10, 20, 1),
(2, 'Province2', 'Province Full Name 2', 30, 40, 2);

-- 2. Insertar datos en la tabla Locations
INSERT INTO public.locations (id, name, id_province, latitude, longitude) VALUES
(1, 'Location1', 1, 50, 60),
(2, 'Location2', 2, 70, 80);

-- 3. Insertar datos en la tabla Event_Categories
INSERT INTO public.event_categories (id, name, display_order) VALUES
(1, 'Category1', 1),
(2, 'Category2', 2);

-- 4. Insertar datos en la tabla Users
INSERT INTO public.users (id, first_name, last_name, username, password) VALUES
(1, 'John', 'Doe', 'johndoe', 'password1'),
(2, 'Jane', 'Smith', 'janesmith', 'password2');

-- 5. Insertar datos en la tabla Event_Enrollments (esto es crítico antes de insertar en events)
INSERT INTO public.event_enrollments (id, id_events, id_user, description, registration_date_time, attended, observations, rating) VALUES
(1, 1, 1, 'Enrollment1', '2024-06-02', 1, 'Observation1', 5),
(2, 2, 2, 'Enrollment2', '2024-07-02', 1, 'Observation2', 4);

-- 6. Insertar datos en la tabla Event_Locations
INSERT INTO public.event_locations (id, id_location, name, full_address, max_capacity, latitude, longitude, id_creator_user) VALUES
(1, 1, 'Event Location 1', '123 Street, City', '100', 50, 60, 1),
(2, 2, 'Event Location 2', '456 Avenue, City', '200', 70, 80, 2);

-- 7. Insertar datos en la tabla Events (ahora que event_enrollments ya tiene los datos referenciados)
INSERT INTO public.events (id, name, description, id_event_category, id_event_location, start_date, duration_in_minutes, price, enabled_for_enrollment, max_assistance, id_creator_user) VALUES
(1, 'Event1', 'Description1', 1, 1, '2024-06-01', 120, 10, 1, 100, 1),
(2, 'Event2', 'Description2', 2, 2, '2024-07-01', 150, 20, 2, 200, 2);

-- 8. Insertar datos en la tabla Tags
INSERT INTO public.tags (id, name) VALUES
(1, 'Tag1'),
(2, 'Tag2');

-- 9. Insertar datos en la tabla Event_Tags
INSERT INTO public.event_tags (id, id_events, id_tag) VALUES
(1, 1, 1),
(2, 2, 2);

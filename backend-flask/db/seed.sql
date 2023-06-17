-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Mohamed Dine', 'Kingdini23' , 'Mdini95@outlook.com' , 'MOCK'),
  ('Mo Dini', 'kingdini' , 'Mohamed.dine95@gmail.com' , 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'Kingdini23' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )
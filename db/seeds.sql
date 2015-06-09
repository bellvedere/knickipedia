\c knickipedia;

-- create users
INSERT INTO users
  (name, email, password)
VALUES
  ('Jaden Carver', 'jaden@generalassemb.ly', 'blahblah'),
  ('Jeremy Bell', 'jeremyianbell@gmail.com', 'melville'),
  ('Phil Lamplugh', 'phil@generalassemb.ly', 'melville1');

-- create articles
INSERT INTO articles
  (user_id, name, content)
VALUES
  (1, 'Patrick Ewing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tempor ultrices mauris in gravida. Ut volutpat pulvinar metus, nec facilisis lectus. Mauris mattis, odio a imperdiet posuere, dui odio pellentesque neque, non fringilla lectus dui eu sapien. Pellentesque cursus bibendum pretium. In viverra lectus eget gravida gravida. Nulla vel lectus vestibulum, convallis urna at, luctus sapien. Mauris a consectetur turpis, vel feugiat est. Integer varius orci vitae lacus tincidunt aliquet. In sit amet risus lacinia, bibendum enim tempor, feugiat mi. Phasellus sit amet nibh neque. Ut in mattis nunc, vitae dignissim ligula. Donec ac nisl ornare, lacinia dolor ut, accumsan lorem. Suspendisse at magna non velit dignissim dignissim.

Nunc et leo augue. Quisque eget tortor gravida, elementum lorem molestie, congue turpis. Donec eleifend ut ipsum eu mollis. Etiam lacinia dictum ornare. Suspendisse potenti. Aliquam pellentesque nunc nec risus placerat, faucibus molestie ipsum laoreet. Maecenas porttitor ipsum non nisi eleifend mattis. Nam ac dapibus dui. In accumsan faucibus ligula, eget laoreet mauris hendrerit nec.

Maecenas fermentum commodo convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vestibulum, lectus quis gravida efficitur, sem velit luctus lacus, laoreet consequat ex lorem in mauris. Vestibulum facilisis augue ut nulla tempor porta. Nunc feugiat velit ac lectus suscipit pellentesque. Aliquam vestibulum tempus felis, in vehicula mauris rhoncus id. Donec at enim ex. Cras egestas ac urna vel cursus. Nullam lobortis ante odio, sit amet dictum augue tristique vitae. In rhoncus orci lectus, euismod aliquam libero convallis ut. Nullam malesuada fringilla arcu nec tempor. Integer feugiat iaculis tortor eget condimentum. Donec sed iaculis mauris.

Proin venenatis magna a tortor eleifend pulvinar. Donec mauris velit, pretium ut ante sit amet, interdum placerat nunc. Nullam semper porttitor tortor, eleifend gravida sapien placerat sit amet. Phasellus ac euismod purus. Vivamus augue erat, pellentesque ac egestas eu, ornare ac risus. Morbi at rutrum dolor. Nam dapibus nulla viverra tellus suscipit, a dignissim nisi varius. Maecenas finibus ipsum vitae sapien congue, quis fermentum odio feugiat. Sed et tempus odio.

Sed sed condimentum quam. Nullam venenatis, lectus sit amet vestibulum egestas, urna lorem consectetur libero, quis vulputate nisi leo sit amet dui. Maecenas tincidunt enim et est consequat consectetur. Morbi nec massa lorem. Integer eu volutpat libero, vel dictum lacus. Nam vel hendrerit turpis. Pellentesque vitae tempus erat. In quam est, tempor eu mollis a, vehicula a elit. Aenean vel molestie sapien. Fusce velit enim, varius at feugiat nec, vulputate ac turpis. Morbi ultricies auctor nulla non dictum. Mauris feugiat eros leo, vel pretium purus sagittis non.'),
  (1, 'Bernard King', 'Lorem Ipsum'),
  (2, 'Willis Reed', 'Great Willis Reed article.'),
  (2, 'Walt Clyde Frazier', 'Great Walt Frazier article.'),
  (3, 'Red Auerbach', 'Great Red Auerbach article.');

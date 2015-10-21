INSERT INTO authors
(name, image, email, password, created_at)
VALUES
('Jeremy Bell', '/images/user_images/jb_photo.png', 'jb@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Kelly Devine', '/images/user_images/kd_photo.png', 'kd@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Ben Sayeg', '/images/user_images/bs_photo.png', 'bs@kn.com', 'password', CURRENT_TIMESTAMP),
('Bryant Novas', '/images/user_images/bn_photo.png', 'bn@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Dasha Muravjova', '/images/user_images/dm_photo.png', 'dm@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('David Neuhas', '/images/user_images/dn_photo.png', 'dn@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Domenica LaLima', '/images/user_images/yellow_photo.png', 'dl@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Gabriella Lubliner', '/images/user_images/gl_photo.png', 'gl@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('James Kim', '/images/user_images/jk_photo.png', 'jk@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Karlyce Edwards', '/images/user_images/gray_photo.png', 'ke@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Max Peterson', '/images/user_images/green_photo.png', 'mp@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Michael Dennis', '/images/user_images/md_photo.png', 'md@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Orin Xie', '/images/user_images/red_photo.png', 'ox@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Orlando Arana', '/images/user_images/yellow_photo.png', 'oa@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Ryan Burke', '/images/user_images/rb_photo.png', 'rb@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Andrew Garver', '/images/user_images/ag_photo.png', 'ag@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Dor Rubin', '/images/user_images/dr_photo.png', 'dr@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Fernanda Correa', '/images/user_images/fc_photo.png', 'fc@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Gordon DuGan', '/images/user_images/gray_photo.png', 'gd@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Junho Rhee', '/images/user_images/jr_photo.png', 'jr@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Kelly Stevens', '/images/user_images/green_photo.png', 'ks@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Mark Paulson', '/images/user_images/red_photo.png', 'mp@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Robert King', '/images/user_images/yellow_photo.png', 'rk@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Samuel Huxiali', '/images/user_images/gray_photo.png', 'sh@knickipedia.com', 'password', CURRENT_TIMESTAMP),
('Anila Alexander', '/images/user_images/green_photo.png', 'aa@knickipedia.com', 'password', CURRENT_TIMESTAMP)
;


INSERT INTO categories
(name, description)
VALUES
('Patrick Ewing', 'Articles regarding Patrick Ewing.'),
('Bernard King', 'Articles regarding Bernard King.'),
('Championship Years', 'Articles regarding the Championship Years.'),
('Jeff Van Gundy', 'Articles regarding Jeff Van Gundy.'),
('Mike Dantoni', 'Articles regarding Mike Dantoni.')
;

INSERT INTO articles
(author_id, headline, body, summary, category_id, created_at)
VALUES
(1, 'Patrick Ewing',
"Patrick Aloysius Ewing, Sr. (born August 5, 1962) is a Jamaican-American retired Hall of Fame basketball player. He played most of his career with the NBA's New York Knicks as their starting center and played briefly with the Seattle SuperSonics and Orlando Magic. He is currently the associate head coach of the Charlotte Hornets, working under Steve Clifford. Ewing played center for the Georgetown Hoyas for four years and was named as the 16th greatest college player of all time by ESPN. He won Olympic gold medals as a member of the 1984 and 1992 United States men's Olympic basketball teams. In a 1996 poll celebrating the 50th anniversary of the NBA, Ewing was selected as one of the 50 Greatest Players in NBA History.He is a two-time inductee into the Basketball Hall of Fame in Springfield, Massachusetts (in 2008 for his individual career, and in 2010 as a member of the 1992 Olympic team). In 2009, he was inducted into the U.S. Olympic Hall of Fame as a member of the 'Dream Team'. He was inducted into the Hall of Fame on September 5, 2008 along with former NBA coach Pat Riley and former Houston Rockets center Hakeem Olajuwon. His number 33 was retired by the Knicks in 2003.", 1, CURRENT_TIMESTAMP),
(1, 'Early Life', "Born in Kingston, Jamaica, Ewing excelled at cricket and soccer. In 1975, a 12-year-old Ewing joined his family in Cambridge, Massachusetts. He learned to play basketball at Cambridge Rindge and Latin School. While in high school, Ewing's team bus was often rocked by opponents when his team traveled to play an away game. In order to prepare for college, Ewing joined the MIT-Wellesley Upward Bound Program. Upward Bound is a federally funded TRIO college-prep program for low income high school students. He went to Georgetown University in Washington, D.C. and became a citizen of the United States while attending Georgetown.", 1, CURRENT_TIMESTAMP)
;
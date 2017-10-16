USE test;
DROP TABLE IF EXISTS book;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `printYear` int(11) NOT NULL,
  `readAlready` tinyint(1) NOT NULL,
   PRIMARY KEY (`id`))
  ENGINE=InnoDB 
  DEFAULT CHARSET=utf8;


INSERT INTO `book` (`id`, `title`, `description`, `author`, `isbn`, `printYear`, `readAlready`) VALUES
(3, 'Data Smart', 'tech', 'Foreman, John', '55225', 2006, 0),
(4, 'God Created the Integers', 'tech', 'Hawking, Stephen', '38809', 2010, 1),
(5, 'Superfreakonomics', 'science', 'Dubner, Stephen', '32041', 2012, 1),
(6, 'Orientalism', 'nonfiction', 'Said, Edward', '38809', 2010, 0),
(7, 'Nature of Statistical Learning Theory, The', 'tech', 'Vapnik, Vladimir', '52900', 2007, 1),
(8, 'Integration of the Indian States', 'nonfiction', 'Menon, V P', '47089', 2008, 0),
(9, 'Drunkard''s Walk, The', 'science', 'Mlodinow, Leonard', '38809', 2010, 1),
(10, 'Image Processing & Mathematical Morphology', 'tech', 'Shih, Frank', '58081', 2006, 0),
(11, 'How to Think Like Sherlock Holmes', 'nonfiction', 'Konnikova, Maria', '57600', 2006, 1),
(12, 'Data Scientists at Work', 'tech', 'Sebastian Gutierrez', '52900', 2007, 0),
(13, 'Slaughterhouse Five', 'fiction', 'Vonnegut, Kurt', '39204', 2010, 0),
(14, 'Birth of a Theorem', 'science', 'Villani, Cedric', '54756', 2007, 1),
(15, 'Structure & Interpretation of Computer Programs', 'tech', 'Sussman, Gerald', '57600', 2006, 0),
(16, 'Age of Wrath, The', 'nonfiction', 'Eraly, Abraham', '56644', 2006, 1),
(17, 'Trial, The', 'fiction', 'Kafka, Frank', '39204', 2010, 0),
(18, 'Statistical Decision Theory''', 'tech', 'Pratt, John', '55696', 2006, 0),
(19, 'Data Mining Handbook', 'tech', 'Nisbet, Robert', '58564', 2006, 0),
(20, 'New Machiavelli, The', 'fiction', 'Wells, H. G.', '32400', 2012, 1),
(21, 'Physics & Philosophy', 'philosophy', 'Heisenberg, Werner', '38809', 2010, 0),
(22, 'Making Software', 'tech', 'Oram, Andy', '53824', 2007, 0),
(23, 'Analysis, Vol I', 'tech', 'Tao, Terence', '61504', 2005, 0),
(24, 'Machine Learning for Hackers', 'tech', 'Conway, Drew', '54289', 2007, 0),
(25, 'Signal and the Noise, The', 'tech', 'Silver, Nate', '54289', 2007, 1),
(26, 'Python for Data Analysis', 'tech', 'McKinney, Wes', '54289', 2007, 0),
(27, 'Introduction to Algorithms', 'tech', 'Cormen, Thomas', '54756', 2007, 0),
(28, 'Beautiful and the Damned, The', 'nonfiction', 'Deb, Siddhartha', '39204', 2010, 0),
(29, 'Outsider, The', 'fiction', 'Camus, Albert', '39204', 2010, 1),
(30, 'Complete Sherlock Holmes, The - Vol I', 'fiction', 'Doyle, Arthur Conan', '30976', 2012, 0),
(31, 'Complete Sherlock Holmes, The - Vol II', 'fiction', 'Doyle, Arthur Conan', '30976', 2012, 0),
(32, 'Wealth of Nations, The', 'science', 'Smith, Adam', '30625', 2012, 0),
(33, 'Pillars of the Earth, The', 'fiction', 'Follett, Ken', '30976', 2012, 0),
(34, 'Mein Kampf', 'nonfiction', 'Hitler, Adolf', '44944', 2009, 0),
(35, 'Tao of Physics, The', 'science', 'Capra, Fritjof', '32041', 2012, 0),
(36, 'Surely You''re Joking Mr Feynman', 'science', 'Feynman, Richard', '39204', 2010, 1),
(37, 'Farewell to Arms, A', 'fiction', 'Hemingway, Ernest', '32041', 2012, 0),
(38, 'Veteran, The', 'fiction', 'Forsyth, Frederick', '31329', 2012, 0),
(39, 'False Impressions', 'fiction', 'Archer, Jeffery', '31329', 2012, 0),
(40, 'Last Lecture, The', 'nonfiction', 'Pausch, Randy', '38809', 2010, 1),
(41, 'Return of the Primitive', 'philosophy', 'Rand, Ayn', '40804', 2010, 0),
(42, 'Jurassic Park', 'fiction', 'Crichton, Michael', '30276', 2013, 0);

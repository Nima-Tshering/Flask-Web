-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2018 at 04:39 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `slug` text NOT NULL,
  `file_image` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `date`, `slug`, `file_image`) VALUES
(1, 'CM Launches PFMS of NSAP', 'Gangtok, Sept 29: (IPR) Chief Minister Shri Pawan Chamling lauched the PFMS enabled platform for the disbursement of Pensions under National Social Assistance Program (NSAP) here at a function held at Mintogang this evening. With this launching, Sikkim becomes one of the pioneer States to introduce this transparent system of direct benefit transfer through which beneficiaries will directly receive the pension amount in their bank account in real time. The Aadhar-linked platform has been created by National Informatics Centre, Government of India in collaboration with Ministry of Rural Development.\r\nFour schemes will be covered under this online payment platform namely Indira Gandhi National Old Age Pension Scheme, Indira Gandhi National Disability Pension Scheme, Indira Gandhi National Widow Pension Scheme and National Family Benefit Scheme.\r\nThe program had the presence of Chief Secretary Shri A.K. Shrivastava, Chief Economic Adviser, Ministry of Rural Development, Government of India Shri Sudhaker Shukla, Principal Secretary Social Justice, Empowerment and Welfare Department, Government of Sikkim, Shri K. Sreenivasulu, Secretary RM&DD Government of Sikkim Shri C.S. Rao, Deputy Secretary Ministry of Rural Development – NCAP Smt Rekha Chauhan, State Informatic Officer NIC Sikkim Shri Birendra Chettri, Principal System Analyst, NIC New Delhi, Shri Brijesh Shrivastava, and officers of State Social Justice Department.', '2018-09-30 11:12:00', 'CM-Launches-PFMS-of-NSAP', 'b1.jpg'),
(2, 'Sikkim Wai Wai Factory Workers Lay Plight To Govt', 'Gangtok, 29 Sep : Today, workers from the Wai-Wai factory situated at Mining in Rangpo along with Sikkim Krantikari Morcha SKM party Majdoor Morcha and it’s convenor marched into the Labor Department, located at Lingding here at Capital Gangtok to outcry their grievances to the Secretary.\r\nIn the dialogue between the the workers and the Secretary,  Wai Wai Factory workers alleged that they are not provided basic health care facilities by the company even though their unsuitable working condition demands one. The plight of the female workers who are assigned with night shifts were brought to light as they are not provided with transportation facility which puts them in grave danger.In terms of finance,they drew the authorities’ attention to their EPF being deducted regularly from their salary yet not possessing any documentation of the same.\r\nThey said that they had no idea about the whereabouts of their hard earned money which was being deducted without fail.\r\nThe workers further stated that on several occasions they have been threatened if they dared to speak against the company.', '2018-10-01 12:27:00', 'Sikkim-Wai-Wai-Factory-Workers-Lay-Plight-To-Govt', 'b2.jpg'),
(3, 'SDF Govt doesn’t bother for West Sikkim', 'Geyzing , 28 Sep : In a press conference held today at the office of the Press Club of West Sikkim, D.B Chauhan, the president of state BJP unit stated that the ruling front SDF will not be able to win even one assembly seat from west Sikkim in coming election claiming that the ruling front has failed to live upto the expectations of the people of West Sikkim in terms of development and public welfare initiatives.\r\nHe added that dream of the SDF party to grab the power again in 2019 will dashed to the ground as the people will vote for ‘Change’ this time. ‘Janta is exausted of one party led government and  power shuffle is what they want’, he said.\r\nHe alleged that west Sikkim is still lagging behind in many sectors in terms of development despite the SDF party’s 24 years of rules.\r\nD.B Chauhan was on two days long tour of west Sikkim along with his team comprising of party functionaries.\r\nChauhan further informed that in 2019 state assembly poll, BJP will fight the election with agendas solely based on ‘development of Sikkim’. He shared that his party would field the strong candidates having clean image and connection with common sikkimese.\r\nChauhan added that the gate is open if the political parties of the state other than SDF opt for allaince with BJP in the assembly poll. “We are eager if proposal for alliance with other political party is made. Allied force would definitely have the upper hand”, he said.', '2018-10-01 15:34:00', 'SDF-Govt-doesnt-bother-for-West-Sikkim', 'b3.jpg'),
(4, 'Parakram Parv to be Held in Gangtok, Namchi to Celebrate 2nd Anniversary of Surgical Strikes', 'Gangtok, 27 Sep (PIB) : The Indian Armed Forces are observing “Parakram Parv” from 28 September 2018 to mark the second anniversary of the Surgical Strikes on terrorist camps across the Line of Control and to showcase the courage, valour and sacrifice of the Armed Forces. The event in Sikkim will be organized at West Point School, Gangtok on 28 and 29 and at the OBC School, Kamrang, Namchi on the 29th of September. The event will include weapons display, selfie corner, screening of movie on surgical strikes, motivational lecture and career counselling and information kiosks, and band display.\r\nIn the aftermath of the attack on Indian Army’s Jammu and Kashmir based Uri Brigade Headquarters in September 2016, numerous civil and military response measures were initiated by the Indian government against Pakistan. Of these, the step that became widely popular and resonated with the nation was the ‘Surgical Strikes’, a series of near simultaneous raids on a number of launch pads across the Line of Control.\r\nUndeniably, the murderous attack on the Uri base was a watershed event following which India’s approach underwent a discernible shift, as demonstrated with a hardening of posture along the LoC and the way it dealt with ceasefire violations (CFVs). While surgical strikes were not a novelty in themselves, India for the first time acknowledged having carried the cross border raids, with the larger message intended at signaling the adversary of the change in India’s approach to respond to terrorism. The strikes were a nationally coordinated move, followed by a public acknowledgement by the armed forces and the government with the greater message of strikes seemingly being a major paradigm shift in the way India responded to provocations by the Pakistani army.\r\nSeen as demonstrating India’s willingness and capability to use force for responding to cross-border aggression, the surgical strikes were a huge success.', '2018-10-01 15:07:00', 'Parakram-Parv-to-be-Held-in-Gangtok-Namchi-to-Celebrate-2nd-Anniversary-of-Surgical-Strikes', 'b4.jpg'),
(5, 'Center Shock : PM reaches Pakyong via road instead by chopper', 'Pakyong , 25 Sep : Once again the Prime Minister Narendra Modi leaves everyone stunned during his 2 day long visit to Sikkim for Pakyong Airport inauguration.\r\nOn Monday as per the schedule PM was to reach Pakyong Airport tentetively around 10:05 AM on morning by his chopper from Gangtok where all govt machinery , officials, securities were pressed unto receiving PM Narendra Modi but things did not turn the way it was supposed to be , the PM Modi took a U-Turn to reach Pakyong via road in the final moment instead by chopper.Gangtok to Pakyong Airport which is 30 kms is a narrow road which is yet to be widened , the said project is slated for completion since 2 years by project developer National Infrastructure Development Corporation Limited (NHIDCL).\r\nPM Narendra Modi who in many occassion is seen taking autonomous opinion have left everyone stunned and surprise as many times!\r\nThe convoy of PM reached Pakyong Airport almost within an hour waving hands to people, elderly citizens and children eagerly standing on roadside all through his journey via narrow road.', '2018-10-01 06:15:00', 'Center-Shock-PM-reaches-Pakyong-via-road-instead-by-chopper', 'b5.jpg'),
(6, 'lsjfdkjlasjl;jdl;', 'ljsdflkjaslkjflkjaskljfkldjaskljfkljalk', '2018-10-01 19:59:21', 'alsjfdlkas', 'sldfjl');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

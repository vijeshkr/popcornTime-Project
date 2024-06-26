List eventsDummyData = [
  {
    'title':' +–=÷× TOUR',
    'image':'assets/images/events_data/image/edsheeranimage1.jpg',
    'coverImage':'assets/images/events_data/cover/edsheerancover1.jpg',
    'event':'Show',
    'item':'Music',
    'dateTime':'22 May 2024, 07:30 PM',
    'artist':'Ed Sheeran',
    'category':'',
    'location':'Mahalaxmi Race Course, Mumbai',
  },
  {
    'title':'KBFC Season Ticket',
    'image':'assets/images/events_data/image/islimage.jpg',
    'coverImage':'assets/images/events_data/cover/islcover.jpg',
    'event':'Sports',
    'item':'Football',
    'dateTime':'All Home Matches',
    'artist':'',
    'category':'ISL',
    'location':'Jawaharlal Nehru Stadium, Kochi',
  },
  {
    'title':'All Hearts Tour',
    'image':'assets/images/events_data/image/sreyaimage1.jpg',
    'coverImage':'assets/images/events_data/cover/sreyacover1.jpg',
    'event':'Show',
    'item':'Music',
    'dateTime':'11 May 2024, 06:30 PM',
    'artist':'Sreya Ghoshal',
    'category':'',
    'location':'New Horizon College of Engineering, Bengaluru',
  },
  {
    'title':'CSK vs MI',
    'image':'assets/images/events_data/image/cskmiimage.jpg',
    'coverImage':'assets/images/events_data/cover/cskmicover.jpg',
    'event':'Sports',
    'item':'Cricket',
    'dateTime':'04 May 2024, 07:30 PM',
    'artist':'',
    'category':'IPL',
    'location':'M. A. Chidambaram Stadium, Chennai',
  },
  {
    'title':'One Direction LIVE',
    'image':'assets/images/events_data/image/1dimage.jpg',
    'coverImage':'assets/images/events_data/cover/1dcover.jpg',
    'event':'Show',
    'item':'Music',
    'dateTime':'12 June 2024, 07:30 PM',
    'artist':'ONE DIRECTION',
    'category':'',
    'location':'M. Chinnaswamy Stadium, Bengaluru',
  },
  {
    'title':'CFC vs MUFC',
    'image':'assets/images/events_data/image/footballimage.jpg',
    'coverImage':'assets/images/events_data/cover/footballcover.jpg',
    'event':'Sports',
    'item':'Football',
    'dateTime':'11 July 2024, 03:30 PM',
    'artist':'',
    'category':'MLS',
    'location':'Bank of America Stadium, US',
  },
  {
    'title':'Ed Sheeran LIVE',
    'image':'assets/images/events_data/image/edsheeranimage2.jpg',
    'coverImage':'assets/images/events_data/cover/edsheerancover2.jpg',
    'event':'Show',
    'item':'Music',
    'dateTime':'22 July 2024, 07:30 PM',
    'artist':'Ed Sheeran',
    'category':'',
    'location':'New Horizon College of Engineering, Bengaluru',
  },
  {
    'title':'MI vs KKR',
    'image':'assets/images/events_data/image/mikkrimage.jpg',
    'coverImage':'assets/images/events_data/cover/mikkrcover.jpg',
    'event':'Sports',
    'item':'Cricket',
    'dateTime':'22 May 2024, 07:30 PM',
    'artist':'',
    'category':'IPL',
    'location':'Wankhede Stadium, Mumbai',
  },
  {
    'title':'Black Pink: The Show',
    'image':'assets/images/events_data/image/bpimage.jpg',
    'coverImage':'assets/images/events_data/cover/bpcover.jpg',
    'event':'Show',
    'item':'Music',
    'dateTime':'22 Sept 2024, 07:30 PM',
    'artist':'BLACK PINK',
    'category':'',
    'location':'Greenfield Stadium, Trivandrum',
  },
  {
    'title':'RR vs MI',
    'image':'assets/images/events_data/image/rrimage.jpg',
    'coverImage':'assets/images/events_data/cover/rrcover.jpg',
    'event':'Sports',
    'item':'Cricket',
    'dateTime':'29 May 2024, 07:30 PM',
    'artist':'',
    'category':'IPL',
    'location':'Wankhede Stadium, Mumbai',
  },
  {
    'title':'Sreya Ghoshal LIVE',
    'image':'assets/images/events_data/image/sreyaimage2.jpeg',
    'coverImage':'assets/images/events_data/cover/sreyacover2.jpg',
    'event':'Show',
    'item':'Music',
    'dateTime':'22 Sept 2024, 07:30 PM',
    'artist':'Sreya Ghoshal',
    'category':'',
    'location':'Mahalaxmi Race Course, Mumbai',
  },
  {
    'title':'India vs Pakistan',
    'image':'assets/images/events_data/image/indpakimage.jpg',
    'coverImage':'assets/images/events_data/cover/indpakcover.jpg',
    'event':'Sports',
    'item':'Cricket',
    'dateTime':'22 Oct 2024, 07:30 PM',
    'artist':'',
    'category':'World Cup T20',
    'location':'Wankhede Stadium, Mumbai',
  },

];

List eventsDummyDataShow = eventsDummyData.where((data) => data['event'] == 'Show').toList();
List eventsDummyDataSports = eventsDummyData.where((data) => data['event'] == 'Sports').toList();
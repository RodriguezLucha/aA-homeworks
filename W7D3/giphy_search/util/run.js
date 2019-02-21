let a = 
{
  entities: {
    restaurant: {
      1: {
        id: 1,
        name: 'Steaks R Us',
        state: 'CA',
        zip: 94511,
        address: '823 Steak Drive',
        city: 'San Francisco',
        website: 'https://www.steaksrus.com',
        average_stars: '4.5',
        price_range: '3.4'
      },
      2: {
        id: 2,
        name: 'Plants R Us',
        state: 'CA',
        zip: 94522,
        address: '123 Plant Drive',
        city: 'San Jose',
        website: 'https://www.plantsforall.com',
        average_stars: '3.5',
        price_range: '5.0'
      }
    },
    styles: {
      1: {
        id: 1,
        style: 'American'
      },
      2: {
        id: 2,
        style: 'Hipster'
      }
    },
    reviews: {
      1: {
        id: 1,
        retaurant_id: 1,
        user_id: 1,
        num_stars: 5,
        content: 'This was the best food I ever had! Will be coming back soon.'
      },
      2: {
        id: 2,
        retaurant_id: 1,
        user_id: 3,
        num_stars: 1,
        content: 'Never again! I was poisoned by the food.'
      }
    },
    restaurantStyles: {
      1: {
        id: 1,
        retaurant_id: 1,
        style_id: 1,
      },
      2: {
        id: 2,
        retaurant_id: 1,
        style_id: 2,
      },
    }
  },
  errors: {
    login: ['Incorrect username/password combination']
  },
  session: {
    currentUserId: 25
  }
};
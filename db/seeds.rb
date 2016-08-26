# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Like.destroy_all
Comment.destroy_all
Style.destroy_all
User.destroy_all

u1 = User.create({ name: 'Magda', password: 'magda', email: 'magda@ga.co', gender: 'F' })
u2 = User.create({ name: 'Dean', password: 'dean', email: 'dean@ga.co', gender: 'M' })
u3 = User.create({ name: 'Denis', password: 'denis', email: 'denis@ga.co', gender: 'M' })
u4 = User.create({ name: 'Maggie', password: 'maggie', email: 'maggie@ga.co', gender: 'F' })
u5 = User.create({ name: 'Sam', password: 'sam', email: 'sam@ga.co', gender: 'M' })
u6 = User.create({ name: 'Jordan', password: 'jordan', email: 'jordan@ga.co', gender: 'M' })
u7 = User.create({ name: 'Andrea', password: 'andrea', email: 'andrea@ga.co', gender: 'F' })
u8 = User.create({ name: 'Ray', password: 'ray', email: 'ray@ga.co', gender: 'M' })
u9 = User.create({ name: 'Tadisha', password: 'tadisha', email: 'tadisa@ga.co', gender: 'F' })

  # female front - http://i.imgur.com/RVFAG7y.png
  # female back - http://i.imgur.com/X7aNUPQ.png
  # female side - http://i.imgur.com/w0ZRa8w.png

  # male front - http://i.imgur.com/6X1UAwc.png
  # male side - http://i.imgur.com/7Mmmj2b.png
  # male back - http://i.imgur.com/ykTWhFa.png

  # male front - http://i.imgur.com/CPwvwKn.png
  # male side - http://i.imgur.com/2pzuSAZ.png
  # male back - http://i.imgur.com/EUSIERe.png

s1 = Style.create ({
  tag: 'haircolor',
  studioname: 'Billie Jean Hair',
  studiowebsiteurl: 'http://www.billiejeanhair.com/',
  hairdressername: 'Deanne',
  hairpicfront: 'http://i.imgur.com/RVFAG7y.png',
  hairpicside: 'http://i.imgur.com/w0ZRa8w.png',
  hairpicback: 'http://i.imgur.com/X7aNUPQ.png',
  price: '100',
  rating: '3',
  user_id: u1.id,
  lat: '-37.8122912',
  lng: '144.9581958'

})

s2 = Style.create ({
  tag: 'haircut',
  studioname: 'Rakis on Collins',
  studiowebsiteurl: 'http://www.rakis.com.au/',
  hairdressername: 'Andrew',
  hairpicfront: 'http://i.imgur.com/6X1UAwc.png',
  hairpicside: 'http://i.imgur.com/7Mmmj2b.png',
  hairpicback: 'http://i.imgur.com/ykTWhFa.png',
  price: '45',
  rating: '4',
  user_id: u2.id,
  lat: '-37.814938',
  lng: '144.967652'
})

s3 = Style.create ({
  tag: 'haircut',
  studioname: 'Toni & Guy',
  studiowebsiteurl: 'http://www.T&G.com.au/',
  hairdressername: 'Andrew',
  hairpicfront: 'http://i.imgur.com/CPwvwKn.png',
  hairpicside: 'http://i.imgur.com/2pzuSAZ.png',
  hairpicback: 'http://i.imgur.com/EUSIERe.png',
  price: '30',
  rating: '2',
  user_id: u3.id,
  lat: '-37.8140934',
  lng: '144.9676804'
})

s4 = Style.create ({
  tag: 'haircolor',
  studioname: 'Edwards and Co.',
  studiowebsiteurl: 'http://www.edwardsandco.com.au/',
  hairdressername: 'Sui',
  hairpicfront: 'http://i.imgur.com/T0xcvCi.png',
  hairpicside: 'http://i.imgur.com/CXtC4uK.png',
  hairpicback: 'http://i.imgur.com/FQ7xElG.png',
  price: '300',
  rating: '2',
  user_id: u4.id,
  lat: '-37.810343',
  lng: '144.97114699999997'
})

s5 = Style.create ({
  tag: 'undercut',
  studioname: 'The Melbourne Barber Shop',
  studiowebsiteurl: 'http://www.thebarbershop.com.au/',
  hairdressername: 'Andrew',
  hairpicfront: 'http://i.imgur.com/7Mmmj2b.png',
  hairpicside: 'http://i.imgur.com/cwlwdUE.png',
  hairpicback: 'http://i.imgur.com/EUSIERe.png',
  price: '80',
  rating: '4',
  user_id: u5.id,
  lat: '-37.807136',
  lng: '144.9660039'
})

s6 = Style.create ({
  tag: 'fade',
  studioname: 'Toni & Guy',
  studiowebsiteurl: 'http://www.T&G.com.au/',
  hairdressername: 'Andrew',
  hairpicfront: 'http://i.imgur.com/W4bydjK.png',
  hairpicside: 'http://i.imgur.com/0hZTv9p.png',
  hairpicback: 'http://i.imgur.com/Qx10ah7.png',
  price: '50',
  rating: '4',
  user_id: u6.id,
  lat: '-37.8140934',
  lng: '144.9676804'
})

s7 = Style.create ({
  tag: 'hairstyling',
  studioname: 'Toni & Guy',
  studiowebsiteurl: 'http://www.rakis.com.au/',
  hairdressername: 'Melinda',
  hairpicfront: 'http://i.imgur.com/4YMaerB.png',
  hairpicside: 'http://i.imgur.com/lnNCnyf.png',
  hairpicback: 'http://i.imgur.com/n6UB0Xr.png',
  price: '110',
  rating: '5',
  user_id: u7.id,
  lat: '-37.8140934',
  lng: '144.9676804'
})

s8 = Style.create ({
  tag: 'haircut',
  studioname: 'Toni & Guy',
  studiowebsiteurl: 'http://www.rakis.com.au/',
  hairdressername: 'Andrew',
  hairpicfront: 'http://i.imgur.com/MTimnj6.png',
  hairpicside: 'http://i.imgur.com/Gc16Yt9.png',
  hairpicback: 'http://i.imgur.com/4deJoFC.png',
  price: '80',
  rating: '3',
  user_id: u8.id,
  lat: '-37.8140934',
  lng: '144.9676804'
})

s9 = Style.create ({
  tag: 'hairstyling',
  studioname: 'Yoshiko Hair',
  studiowebsiteurl: 'http://www.rakis.com.au/',
  hairdressername: 'Anthony',
  hairpicfront: 'http://i.imgur.com/cIIoXiD.png',
  hairpicside: 'http://i.imgur.com/mTi40jh.png',
  hairpicback: 'http://i.imgur.com/OoQn71E.png',
  price: '250',
  rating: '3',
  user_id: u9.id,
  lat: '-37.8592634',
  lng: '144.9773182'
})

c1 = Comment.create ({
  style_id: s1.id,
  user_id: u9.id,
  text: 'Looks good, I might get a haircut like this too!'
  })

c2 = Comment.create ({
  style_id: s2.id,
  user_id: u8.id,
  text: 'Dont think this suits you'
  })

c3 = Comment.create ({
  style_id: s3.id,
  user_id: u7.id,
  text: 'This looks bad ass.'
  })

c4 = Comment.create ({
  style_id: s4.id,
  user_id: u6.id,
  text: 'Loving ittt!!!'
  })

c5 = Comment.create ({
  style_id: s5.id,
  user_id: u5.id,
  text: 'This looks so nice!!'
  })

c6 = Comment.create ({
  style_id: s6.id,
  user_id: u4.id,
  text: 'This looks great.'
  })

c7 = Comment.create ({
  style_id: s7.id,
  user_id: u3.id,
  text: 'This looks bad ass ****!'
  })

c8 = Comment.create ({
  style_id: s8.id,
  user_id: u2.id,
  text: 'I think they could have made it look cleaner'
  })

c9 = Comment.create ({
  style_id: s9.id,
  user_id: u1.id,
  text: 'This looks like SHITE!!!'
  })

l1 = Like.create ({
  style_id: s1.id,
  user_id: u9.id,
  })

l2 = Like.create ({
  style_id: s2.id,
  user_id: u8.id,
  })

l3 = Like.create ({
  style_id: s3.id,
  user_id: u7.id,
  })

l4 = Like.create ({
  style_id: s4.id,
  user_id: u6.id,
  })

l5 = Like.create ({
  style_id: s5.id,
  user_id: u5.id,
  })

l6 = Like.create ({
  style_id: s6.id,
  user_id: u4.id,
  })

l7 = Like.create ({
  style_id: s7.id,
  user_id: u3.id,
  })

l8 = Like.create ({
  style_id: s8.id,
  user_id: u2.id,
  })

l9 = Like.create ({
  style_id: s9.id,
  user_id: u1.id,
  })

  # male side - http://i.imgur.com/cwlwdUE.png
  # male side - http://i.imgur.com/EEd6CQt.png
  # male side - http://i.imgur.com/0hZTv9p.png
  # male side - http://i.imgur.com/qXtpxl3.png
  # female front - http://i.imgur.com/cIIoXiD.png
  # female front - http://i.imgur.com/T0xcvCi.png
  # female back - http://i.imgur.com/FQ7xElG.png
  # female back - http://i.imgur.com/OoQn71E.png
  # female side - http://i.imgur.com/mTi40jh.png
  # female side - http://i.imgur.com/CXtC4uK.png
  # male back - http://i.imgur.com/Qx10ah7.png
  # male front - http://i.imgur.com/W4bydjK.png

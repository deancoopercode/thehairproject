# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Like.destroy_all
Comment.destroy_all
Style.destroy_all
User.destroy_all

u1 = User.create({ name: 'dean', password: 'dean', email: 'dean@ga.co', gender: 'M' })
u2 = User.create({ name: 'denis', password: 'denis', email: 'denis@ga.co', gender: 'M' })
u3 = User.create({ name: 'magda', password: 'magda', email: 'magda@ga.co', gender: 'F' })

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
  tag: 'Cut',
  studioname: 'Billie Jean Hair',
  studiowebsiteurl: 'http://www.billiejeanhair.com/',
  hairdressername: 'Deanne',
  hairpicfront: 'http://i.imgur.com/RVFAG7y.png',
  hairpicside: 'http://i.imgur.com/w0ZRa8w.png',
  hairpicback: 'http://i.imgur.com/X7aNUPQ.png',
  price: '100',
  rating: '3',
  user_id: u3.id
})
s2 = Style.create ({
  tag: 'Cut',
  studioname: 'Rakis on Collins',
  studiowebsiteurl: 'http://www.rakis.com.au/',
  hairdressername: 'Andrew',
  hairpicfront: 'http://i.imgur.com/6X1UAwc.png',
  hairpicside: 'ttp://i.imgur.com/7Mmmj2b.png',
  hairpicback: 'http://i.imgur.com/ykTWhFa.png',
  price: '45',
  rating: '4',
  user_id: u2.id
})
s3 = Style.create ({
  tag: 'Cut',
  studioname: 'Toni & Guy',
  studiowebsiteurl: 'http://www.rakis.com.au/',
  hairdressername: 'Andrew',
  hairpicfront: 'http://i.imgur.com/CPwvwKn.png',
  hairpicside: 'http://i.imgur.com/2pzuSAZ.png',
  hairpicback: 'http://i.imgur.com/EUSIERe.png',
  price: '30',
  rating: '2',
  user_id: u1.id
})

c1 = Comment.create ({
  style_id: s3.id,
  user_id: u1.id,
  text: 'Looks good, I might get a haircut like this too!'
  })

c2 = Comment.create ({
  style_id: s1.id,
  user_id: u2.id,
  text: 'Dont think this suits you'
  })

c3 = Comment.create ({
  style_id: s2.id,
  user_id: u3.id,
  text: 'This looks bad ass.'
  })

l1 = Like.create ({
  style_id: s2.id,
  user_id: u3.id,
  })

l2 = Like.create ({
  style_id: s1.id,
  user_id: u3.id,
  })

l3 = Like.create ({
  style_id: s3.id,
  user_id: u1.id,
  })
# male side - http://i.imgur.com/cwlwdUE.png
# male side - http://i.imgur.com/EEd6CQt.png

# female front - http://i.imgur.com/cIIoXiD.png

# female side - http://i.imgur.com/mTi40jh.png
# female side - http://i.imgur.com/CXtC4uK.png
# male side - http://i.imgur.com/qXtpxl3.png
# female back - http://i.imgur.com/FQ7xElG.png
# male back - http://i.imgur.com/Qx10ah7.png
# male front - http://i.imgur.com/W4bydjK.png
# female back - http://i.imgur.com/OoQn71E.png
# female front - http://i.imgur.com/T0xcvCi.png
# male side - http://i.imgur.com/0hZTv9p.png

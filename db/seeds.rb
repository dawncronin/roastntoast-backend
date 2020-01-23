# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Picture.destroy_all
# Comment.destroy_all
# Like.destroy_all
# Dislike.destroy_all

user1 = User.create(username: 'Dawnster', password: 'test123', password_confirmation: 'test123')
user2 = User.create(username: 'Allen', password: 'test123', password_confirmation: 'test123')
user3 = User.create(username: 'Roaster', password: 'test123', password_confirmation: 'test123')
user4 = User.create(username: 'Toaster', password: 'test123', password_confirmation: 'test123')
user5 = User.create(username: 'geeuho', password: 'jeeho123', password_confirmation: 'jeeho123')

picture1 = Picture.create(img_url:'https://s.hdnux.com/photos/01/10/07/51/18905699/3/920x920.jpg', roast_bio: 'Roasting bio sample 1', toast_bio: 'Toasting bio sample 1', user_id: 1)
picture2 = Picture.create(img_url:'https://storage.googleapis.com/pokercentral/2019/12/dd51c1dc-3jbevg-815x500.jpg', roast_bio: 'Roasting bio sample 2', toast_bio: 'Toasting bio sample 2', user_id: 2)
picture3 = Picture.create(img_url:'https://cdn.vox-cdn.com/thumbor/H3OFDKo_jSsQpICxKbhqzv1ellw=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/9869735/teaser_pic.0.0.0.png', roast_bio: 'Roasting bio sample 3', toast_bio: 'Toasting bio sample 3', user_id: 3)
picture4 = Picture.create(img_url:'https://d2slcw3kip6qmk.cloudfront.net/marketing/blogs/press/dont-ask/how_to_use_memes_for_marketing.jpg' , roast_bio: 'Roasting bio sample 4', toast_bio: 'Toasting bio sample 4', user_id: 4)

# comment1 = Comment.create(roast: true, text: 'Sample Text 1', picture_id: 1, user_id: 1)
# comment2 = Comment.create(roast: false, text: 'Sample Text 2', picture_id: 2, user_id: 1)
# comment3 = Comment.create(roast: true, text: 'Sample Text 3', picture_id: 1, user_id: 2)
# comment4 = Comment.create(roast: false, text: 'Sample Text 4', picture_id: 2, user_id: 2)
# comment5 = Comment.create(roast: true, text: 'Sample Text 5', picture_id: 1, user_id: 3)
# comment6 = Comment.create(roast: false, text: 'Sample Text 6', picture_id: 2, user_id: 3)

# like1 = Like.create(user_id: 1, comment_id: 1)
# like2 = Like.create(user_id: 2, comment_id: 2)
# like3 = Like.create(user_id: 3, comment_id: 3)
# like4 = Like.create(user_id: 4, comment_id: 4)


dislike1 = Dislike.create(user_id: 1, comment_id: 1)
dislike2 = Dislike.create(user_id: 2, comment_id: 2)
dislike3 = Dislike.create(user_id: 3, comment_id: 3)
dislike4 = Dislike.create(user_id: 4, comment_id: 4)

picturelike1 = PictureLike.create(user_id: 1, picture_id: 4)
picturelike2 = PictureLike.create(user_id: 2, picture_id: 2)
picturelike3 = PictureLike.create(user_id: 3, picture_id: 4)
picturelike4 = PictureLike.create(user_id: 4, picture_id: 3)
picturelike4 = PictureLike.create(user_id: 5, picture_id: 4)
picturelike4 = PictureLike.create(user_id: 5, picture_id: 3)

picturedislike1 = PictureDislike.create(user_id: 1, picture_id: 3)
picturedislike2 = PictureDislike.create(user_id: 2, picture_id: 4)
picturedislike3 = PictureDislike.create(user_id: 3, picture_id: 3)
picturedislike4 = PictureDislike.create(user_id: 4, picture_id: 1)
picturedislike4 = PictureDislike.create(user_id: 5, picture_id: 3)
picturedislike4 = PictureDislike.create(user_id: 5, picture_id: 1)

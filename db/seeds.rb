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
user2 = User.create(username: 'Geeuho', password: 'test123', password_confirmation: 'test123')
user3 = User.create(username: 'Roaster', password: 'test123', password_confirmation: 'test123')
user4 = User.create(username: 'Toaster', password: 'test123', password_confirmation: 'test123')

picture1 = Picture.create(img_url:'www.sampleurl1.com', roast_bio: 'Roasting bio sample 1', toast_bio: 'Toasting bio sample 1', user_id: 1)
picture2 = Picture.create(img_url:'www.sampleurl2.com', roast_bio: 'Roasting bio sample 2', toast_bio: 'Toasting bio sample 2', user_id: 2)
picture3 = Picture.create(img_url:'www.sampleurl3.com', roast_bio: 'Roasting bio sample 3', toast_bio: 'Toasting bio sample 3', user_id: 3)
picture4 = Picture.create(img_url:'www.sampleurl4.com', roast_bio: 'Roasting bio sample 4', toast_bio: 'Toasting bio sample 4', user_id: 4)

comment1 = Comment.create(roast: true, text: 'Sample Text 1', picture_id: 1, user_id: 1)
comment2 = Comment.create(roast: false, text: 'Sample Text 2', picture_id: 2, user_id: 1)
comment3 = Comment.create(roast: true, text: 'Sample Text 3', picture_id: 1, user_id: 2)
comment4 = Comment.create(roast: false, text: 'Sample Text 4', picture_id: 2, user_id: 2)
comment5 = Comment.create(roast: true, text: 'Sample Text 5', picture_id: 1, user_id: 3)
comment6 = Comment.create(roast: false, text: 'Sample Text 6', picture_id: 2, user_id: 3)

like1 = Like.create(user_id: 1, comment_id: 1)
like2 = Like.create(user_id: 2, comment_id: 2)
like3 = Like.create(user_id: 3, comment_id: 3)
like4 = Like.create(user_id: 4, comment_id: 4)

dislike1 = Dislike.create(user_id: 1, comment_id: 1)
dislike2 = Dislike.create(user_id: 2, comment_id: 2)
dislike3 = Dislike.create(user_id: 3, comment_id: 3)
dislike4 = Dislike.create(user_id: 4, comment_id: 4)

picturelike1 = PictureLike.create(user_id: 1, picture_id: 1)
picturelike2 = PictureLike.create(user_id: 2, picture_id: 2)

picturedislike1 = PictureDislike.create(user_id: 1, picture_id: 1)
picturedislike2 = PictureDislike.create(user_id: 2, picture_id: 2)

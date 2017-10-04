leo = User.where(email: "leonardo_scorza@gmail.com").first_or_create! do |user|
        user.name                    = "Leonardo Scorza"
        user.username                = "@leo_scorza"
        user.birthdate               = "18/04/1887"
        user.city                    = "São Paulo"
        user.password                = "123456"
        user.password_confirmation   = "123456"
      end

jho = User.where(email: "jhonatanbmartins@gmail.com").first_or_create! do |user|
        user.name                    = "Jhonatan Martins"
        user.username                = "@jhow_martins"
        user.birthdate               = "18/04/1998"
        user.city                    = "Santa Bárbara d' Oeste"
        user.password                = "123456"
        user.password_confirmation   = "123456"
      end

rafa = User.where(email: "rafael_badan@gmail.com").first_or_create! do |user|
         user.name                    = "Rafael Badan"
         user.username                = "@rafael_badan"
         user.birthdate               = "18/04/1981"
         user.city                    = "São Paulo"
         user.password                = "123456"
         user.password_confirmation   = "123456"
      end

Post.where(content: "Bom dia!! Nova postagem no #OneBitCode").first_or_create! do |post|
  post.user = leo
end

Post.where(content: "Quinta tem OneBitTalk com Jackson Pires <3 #onebittalk").first_or_create! do |post|
  post.user = leo
end

Post.where(content: "Nova turma do bootcamp no próximo mês, bora ser um Super Full Stack!!").first_or_create! do |post|
  post.user = leo
end

Post.where(content: "Partiu jogar um lolzinho #tipomid").first_or_create! do |post|
  post.user = jho
end

Post.where(content: "#Partiu facul!! #fui").first_or_create! do |post|
  post.user = leo
end

Post.where(content: "Chegando do trabalho #cansado").first_or_create! do |post|
  post.user = rafa
end

Post.where(content: "Vários freela pra fazer, bora madrugar #ruby #rails").first_or_create! do |post|
  post.user = rafa
end

Relationship.where(follower: jho, followed: leo).first_or_create!

Relationship.where(follower: rafa, followed: leo).first_or_create!

Relationship.where(follower: leo, followed: rafa).first_or_create!

Relationship.where(follower: jho, followed: rafa).first_or_create!

Relationship.where(follower: leo, followed: jho).first_or_create!

Relationship.where(follower: rafa, followed: jho).first_or_create!

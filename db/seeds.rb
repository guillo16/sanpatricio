# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing database'
Article.delete_all
Event.destroy_all
User.destroy_all

puts 'creating user'
User.create(email: 'user1@hotmail.com', password: '123456')
puts 'creating articles'
user = User.last
Article.create(user: user, category: 'Primario',title: 'Los Alumnos empezaron el ciclo lectivo 2020', photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156076/44267120_1919928638053275_7998990119052771328_o.jpg', subtitle: 'Los Alumnos del Primario empezaron el ciclo lectivo 2020 , y los padres estuvieron presentes',
 content1: 'Los Alumnos del Primario empezaron el ciclo lectivo 2020 , y los padres estuvieron presentes' )
Article.create(user: user,
  category: 'I.B',
  title: 'IB schools win seven International School Awards 2020',
  subtitle: 'The International School Awards 2020 took place in London on Monday 20th January, and IB World Schools were strongly represented amongst the nominees and winners.',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585174411/Stryker-Awards-2019-Immigration-Law-Society-600px.jpg',
  content1:'The International School of the Year Award was presented to St Andrews International School Bangkok, Thailand, for their outstanding environmental initiative aimed at addressing critical environmental challenges.')
Article.create(user: user,
  category: 'Secundario',
  title: 'Los Alumnos empezaron el ciclo lectivo 2020',
  subtitle: 'Los Alumnos del Secundario empezaron el ciclo lectivo 2020',
  photo: '',
  content1:'Los Alumnos del Secundario empezaron el ciclo lectivo 2020.')
Article.create(user: user,
 category: 'Secundario',
 title: 'Inaguramos el nuevo comedor',
 photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156086/73188402_2556116157767850_6243152740499849216_n.jpg',
 subtitle: 'La inaguracion del nuevo comedor del Secundario',
 content1: '')
Article.create(user: user,
  category: 'Jardines',
  title: 'Los Alumnos empezaron el ciclo lectivo 2020',
  subtitle: 'Los Alumnos de los Jardines empezaron el ciclo lectivo 2020',
  photo: '',
  content1:'Los Alumnos de los Jardines empezaron el ciclo lectivo 2020, los padres estuvieron presentes en el primer dia de clases.')
Article.create(user: user,
  category: 'Primario',
  title: 'Los alumnos del primario y la educacion vial',
  subtitle: 'Los alumnos del primario colaboraron en la enseñanza de las normas de transito a los chicos de los jardines',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156072/40029739_1854585191254287_6456261823657148416_o.jpg',
  content1:'Los alumnos del primario colaboraron en la enseñanza de las normas de transito a los chicos de los jardines.
  Esta actividad se realizo acompañada por docentes y expretos en seguridad vial.')
Article.create(user: user,
  category: 'Secundario',
  title: 'Se celebro el 25 de Mayo',
  subtitle: 'Los alumnos realizaron el acto en conmemoracion al 25 de Mayo de 1810 ',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156055/60997228_2240313369348132_358752390532300800_n.jpg',
  content1:'en conmemoracion al 25 de Mayo de 1810, los alumnos y profesores realizaron el tradicional acto.
  El 25 de mayo es una de las fechas patrias más importantes para la República Argentina, que conmemora la Revolución de Mayo, una gesta que concluyó en la constitución de la Primera Junta de Gobierno que depuso la autoridad del virrey español Baltasar Hidalgo de Cisneros sobre el Virreinato del Río de la Plata.
  Los alumnos estuvieron acompañados por los padres que se hicieron presente para el acto patrio. ')
Article.create(user: user,
  category: 'Primario',
  title: 'Proteger al medio ambientee',
  subtitle: 'Los alumnos del primario presentaron sus proyectos de reciclaje y ayuda al medio ambiente',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156066/77268036_2589662987746500_8735371027980222464_n.jpg',
  content1:'En el marco de la feria de ciencia , alumnos del primario presentaron sus proyectos sobre medio ambiente y reciclaje.
  El evento se llevo a cabo en el primario con presencia de algunos padres y expretos en reciclaje.')
Article.create(user: user,
  category: 'Secundario',
  title: 'Se celebro el dia de la Bandera',
  subtitle: 'Los alumnos juraron la bandera en el acto realizado en el Secundario ',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585161507/13483383_1073075972738550_5614390916278140258_o.jpg',
  content1:'En el marco de los festejos por el dia de la bandera los alumnos de tercer año realizaron la jura de la bandera.
  Estuvieron acompañados por sus padres en este importante momento.')
Article.create(user: user,
  category: 'Institucional',
  title: 'Las clases se suspenden por el coronavirus',
  subtitle: 'El presidente decreto la suspencion de las clases en todo el pais',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585173597/GZTLMSWJK5AMLAZ6MAI7J4CVY4.jpg',
  content1:'El presidente decreto la suspencion de las clases en todo el pais.
  Así lo anunciará hoy el Gobierno, luego de un encuentro entre expertos y funcionarios nacionales que liderará, después de las 14, el ministro de Educación, Nicolás Trotta, que ayer había comenzado a resolver medidas que se encaminaban a esa definición.
  Ayer, horas antes, Educación había habilitado a las universidades de todo el país no solo a suspender clases presenciales por 14 días, sino también a permitir que estudiantes y docentes con patologías previas pudieran ausentarse de las aulas de manera justificada.')
# Article.create(user: user,
#   category: '',
#   title: '',
#   subtitle: '',
#   photo: '',
#   content1:'')
puts 'creating events'
Event.create(user: user, title: 'Dia de la independencia', description: 'Se celebra el 9 de julio el dia de nuestra independencia los esperamos a todos', date: '09/07/2020', time: '08', photo: 'https://www.noticiasdel6.com/wp-content/uploads/2018/06/3-1.gif')
Event.create(user: user, title: 'Dia de la bandera', description: 'Se celebra el 20 de junio el dia de nuestra bandera los esperamos a todos', date: '20/06/2020', time: '08',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585175227/fsj9xujujz5lrrhw9mn9.jpg')
Event.create(user: user, title: 'Celebracion del 25 de mayo ', description: 'El 25 de mayo es una de las fechas patrias más importantes para la República Argentina, que conmemora la Revolución de Mayo. Los esperamos a todos', date: '25/05/2020', time: '08', photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156055/60997228_2240313369348132_358752390532300800_n.jpg')
Event.create(user: user,
  title: 'Acto por el General San Martin ',
  description: 'Se Celebra el acto por el paso a la inmortalidad del Padre de la Patria, el general Jose De San Martin',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585175662/jose.jpg',
  date: '17/08/2020',
  time: '08')
Event.create(user: user,
  title: 'Dia del veterano de Malvinas',
  description: 'Se conmemora el Día del Veterano y de los Caídos en la Guerra de Malvinas',
  photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585175744/130104181129_malvinas_304x171.jpg',
  date: '02/04/2020',
  time: '08')
# Event.create(user: user,
#   title: '',
#   description: '',
#   photo: '',
#   date: '/0/2020',
#   time: '08')
puts 'finsh events'

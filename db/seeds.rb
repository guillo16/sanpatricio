# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'faker'
# guillos = User.last(2)
# guillos.each do |user|
#   user.delete
# end
puts 'creating user'

users = [
  'mayracowes80@gmail.com',
  'mayracowes82@gmail.com',
  'mayracowes83@gmail.com',
   ]

  users.each do |user|
    User.create! email: user, password: 'sanpatricio'
  end


  puts 'finish'






# file = URI.open(https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229638/secundario_ministro_de_educacion.jpg')


# article = Article.new(user: user,
#   division: secundario,
#   title: 'Reunion con el ministro de Educacion de la nacion',
#   subtitle: 'Los alumnos se reunieron con el ministro de Educacion de la nacion , Esteban Bullrich',
#   content1: 'Los alumnos se reunieron con el ministro de Educacion de la nacion , Esteban Bullrich. Autoridades , profesores y alumnos fueron parte de esta jornada.',
#   created_at: '15/04/2017')
# article.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
# article.save


# file13 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156072/40029739_1854585191254287_6456261823657148416_o.jpg')
# article13 = Article.new(user: user,
#   division: jardines,
#   title: 'Los alumnos del jardin y la educacion vial',
#   subtitle: 'Los alumnos del primario colaboraron en la enseñanza de las normas de transito a los chicos de los jardines',
#   content1:'Los alumnos del primario colaboraron en la enseñanza de las normas de transito a los chicos de los jardines.
#   Esta actividad se realizo acompañada por docentes y expretos en seguridad vial.',
#   created_at: '25/08/2018')
# article13.photo.attach(io: file13, filename: 'nes.jpg', content_type: 'image/jpg')
# article13.save




# file1 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585233891/IMG_3035.jpg')

# article1 = Article.new(user: user,
#   division: secundario,
#   title: 'Cierre del ciclo lectivo',
#   subtitle: 'Se festejo el acto por el cierre del ciclo lectivo',
#   content1:'Se produjo el acto por el cierre del ciclo lectivo del año, padres y alumnos estuvieron presente en la entrega de distinciones a los alumnos de todos los años.',
#   created_at: '10/12/2018')
# article1.photo.attach(io: file1, filename: 'nes.jpg', content_type: 'image/jpg')
# article1.save






# file2 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156086/73188402_2556116157767850_6243152740499849216_n.jpg')
# article2 = Article.new(user: user,
#  division: institucional,
#  title: 'Inaguramos el nuevo comedor',
#  subtitle: 'La inaguracion del nuevo comedor del Secundario',
#  content1: '',
#  created_at: '02/03/2019')
# article2.photo.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
# article2.save








# file3 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156066/77268036_2589662987746500_8735371027980222464_n.jpg')
# article3 = Article.new(user: user,
#   division: primario,
#   title: '1ª Exposición PEP del IB',
#   subtitle: 'Los alumnos del primario presentaron sus proyectos de ayuda al medio ambiente.',
#   content1:'1ª Exposición PEP del IB de los alumnos de Sexto año del Nivel Primario. Trabajo de Excelencia de los docentes y de todos los alumnos que participan en la muestra. No dejen de visitarla. Orgullosos de nuestro colegio!!
# ',
#   created_at: '28/11/2019')
# article3.photo.attach(io: file3, filename: 'nes.jpg', content_type: 'image/jpg')
# article3.save




# file5 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229668/secundario_comedores.jpg')
# article5 = Article.new(user: user,
#   division: secundario,
#   title: 'Ayuda de los alumnos en los comedores de la zona',
#   subtitle: 'En el marco de la materia C.A.S , los alumnos colaboraron con el comedor "Padre Mujica" ubicado en Yerba Buena',
#   content1:'En el marco de la materia C.A.S , los alumnos colaboraron con el comedor "Padre Mujica" ubicado en Yerba Buena. Felicitamos a alumnos y profesores por esta gran iniciativa.',
#   created_at: '12/10/2018')
# article5.photo.attach(io: file5, filename: 'nes.jpg', content_type: 'image/jpg')
# article5.save











# file6 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156055/60997228_2240313369348132_358752390532300800_n.jpg')
# article6 = Article.new(user: user,
#   division: secundario,
#   title: 'Se celebro el 25 de Mayo',
#   subtitle: 'Los alumnos realizaron el acto en conmemoracion al 25 de Mayo de 1810 ',
#   content1:'En conmemoracion al 25 de Mayo de 1810, los alumnos y profesores realizaron el tradicional acto.
#   El 25 de mayo es una de las fechas patrias más importantes para la República Argentina, que conmemora la Revolución de Mayo, una gesta que concluyó en la constitución de la Primera Junta de Gobierno que depuso la autoridad del virrey español Baltasar Hidalgo de Cisneros sobre el Virreinato del Río de la Plata.
#   Los alumnos estuvieron acompañados por los padres que se hicieron presente para el acto patrio.',
#   created_at: '25/05/2019')
# article6.photo.attach(io: file6, filename: 'nes.jpg', content_type: 'image/jpg')
# article6.save













# file7 = URI.open('https://images.unsplash.com/photo-1584118624012-df056829fbd0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80')
# article7 = Article.new(user: user,
#   division: ib,
#   title: 'The cancellation of the May 2020 IB examinations',
#   subtitle: 'For the first time in its history, the IB will not hold a May exam session due to COVID-19. We speak with IB Director General Siva Kumari to hear more about the decision.',
#   content1:'What led up to your unprecedented decision to not hold exams?
#   It’s been two intensive months of day-to-day decisions about the health and safety of our international community. In late December/early January, we were monitoring and reacting to what was happening in our schools in China, Japan and South Korea. Those schools provided insights on the impact of shutdowns to come. We paid close attention as the epidemic quickly grew to a global pandemic. All the while, we were thinking through scenarios for all situations and, “what if’s”.
#   Simultaneously, we as an organization started migrating to virtual. Our Singapore office transitioned to virtual working seven weeks ago and so have all other locations in the last two weeks. Our 700 employees worldwide are continuing to do what we are here to do, which is to provide services to schools, now as a suddenly virtual organization.
#     The impact of the pandemic on our students and their ability to go through a fair assessment process was a major focal point throughout this entire process.
#     Due to the nature of the IB programme, we could not make the decision one country at a time. We had to make the right decision for our entire global community of teachers, examiners and students.',
#     created_at: '20/04/2020')
# article7.photo.attach(io: file7, filename: 'nes.jpg', content_type: 'image/jpg')
# article7.save




# file8 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/c_scale,w_555/v1585229134/Schools-respond-to-COVID-19-outbreak-by-going-virtual.png')
# article8 = Article.new(user: user,
#   division: ib,
#   title: 'Schools respond to COVID-19 outbreak by going virtual',
#   subtitle: 'Due to the COVID-19, also known as Coronavirus, emergency, many IB World Schools are successfully using online learning to continue students’ education, says IB Curriculum Manager Pilar Quezzaire. ',
#   content1:'Coordinating teachers and students
#   When the Chinese government ordered schools to be shut down due to the COVID-19 outbreak, students and teachers at IB World Schools Shanghai American School (SAS) and Western Academy of Beijing (WAB) were on vacation for the Chinese New Year. Faculty and families were scattered across the world and unable to return to China. Both schools had to respond to the situation as quickly as possible.
#   SAS leadership implemented an emergency online learning programme. In the process, they discovered that their students and teachers resided across five continents and 22 time zones. The first challenge for SAS was to figure out how to get everyone enough online learning and teaching time.
#   Director of Technology Alan Preis says: “At first, learning was almost entirely asynchronous [not online simultaneously] because we assumed we’d be closed for a short time. Now, we have implemented more options for synchronous [groups online at the same time] instruction. But equitable access is a huge issue based on time zones―it is almost impossible to have all students working together with a teacher at the same time.” The Shanghai American School Distance Learning Plan continues to evolve as the school must remain closed longer than originally expected.
#   SAS has had to distribute teachers’ time across different time zones, creating shorter meeting times, more one-to-one conversations with students and more spontaneous teaching moments as students worked on their assignments. SAS leadership has been impressed by how well the teachers have responded despite the stresses of teaching in a different way as well as in a new medium. “The teachers got five years’ worth of professional learning in two weeks,” adds Preis.',
#   created_at: '19/03/2020')
# article8.photo.attach(io: file8, filename: 'nes.jpg', content_type: 'image/jpg')
# article8.save

# file9 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585588869/Captura_de_Pantalla_2020-03-30_a_la_s_12.39.44.png')
# article9 = Article.new(user: user,
#   division: institucional,
#   title: 'Las clases se suspenden por el coronavirus',
#   subtitle: 'Comunicado',
#   content1:'Sres. Padres
#   Nos dirijimos a uds para informarles que a pesar de que en nuestro
#   colegio no tenemos ningún caso de alumno enfermo ni sospechado de
#   enfermedad COVID - 19, la institución en sus 3 Niveles, decide suspender las clases por 14 días para
#   cuidar la salud de toda la Comunidad Educativa y favorecer el aislamiento de las
#   personas en las casas. Esta medida es la única que está siendo efectiva en el mundo para cortar la
#   circulación del virus.  Pero lo hace con eficiencia si se toma a tiempo.',
#   content2: 'Contamos desde ya con su colaboración y compromiso en el cumplimiento estricto y responsable de la cuarentena
#   que se solicita.',
#   content3: 'Daremos respuesta a lo académico como lo hacemos simepre tomando las medidas que debamos tomar al respecto
#   en su momento. Se los mantendrá informados permanentemente.
#   Equipo Directivo de los 3 Niveles del Colegio San Patricio.',
#   created_at: '15/03/2020')
# article9.photo.attach(io: file9, filename: 'nes.jpg', content_type: 'image/jpg')
# article9.save

# file10 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156076/44267120_1919928638053275_7998990119052771328_o.jpg')
# article10 = Article.new(user: user,
#   division: jardines,
#   title: 'Los Alumnos empezaron el ciclo lectivo 2020',
#   subtitle: 'Los Alumnos de los Jardines empezaron el ciclo lectivo 2020',
#   content1:'Los Alumnos de los Jardines empezaron el ciclo lectivo 2020,
#   los padres estuvieron presentes en el primer dia de clases.',
#   created_at: '03/03/2020')
# article10.photo.attach(io: file10, filename: 'nes.jpg', content_type: 'image/jpg')
# article10.save


# file14 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229647/secundario_legislatura.jpg')
# article14 = Article.new(user: user,
#   division: secundario,
#   title: 'Visita a la Legislatura',
#   subtitle: 'Los alumnos visitaron la Legislatura de la provincia',
#   content1:'Invitados por un legislador los alumnos del secundario visitaron la Legislatura. Fue una linda jornada donde los alumnos conocieron el funcionamiento de la Legislatura.',
#   created_at: '01/04/2019')
# article14.photo.attach(io: file14, filename: 'nes.jpg', content_type: 'image/jpg')
# article14.save

# file15 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229647/secundario_legislatura.jpg')
# article15 = Article.new(user: user,
#   division: secundario,
#   title: 'Visita a la Reserva Ecologica',
#   subtitle: 'Los alumnos visitaron la Legislatura de la provincia',
#   content1:'Invitados por un legislador los alumnos del secundario visitaron la Legislatura. Fue una linda jornada donde los alumnos conocieron el funcionamiento de la Legislatura.',
#   created_at: '30/04/2019')
# article15.photo.attach(io: file15, filename: 'nes.jpg', content_type: 'image/jpg')
# article15.save


# file16 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229647/secundario_legislatura.jpg')
# article16 = Article.new(user: user,
#   division: primario,
#   title: 'Feria del Libro',
#   subtitle: 'Los alumnos visitaron la Legislatura de la provincia',
#   content1:'Invitados por un legislador los alumnos del secundario visitaron la Legislatura. Fue una linda jornada donde los alumnos conocieron el funcionamiento de la Legislatura.',
#   created_at: '16/10/2018')
# article16.photo.attach(io: file16, filename: 'nes.jpg', content_type: 'image/jpg')
# article16.save



# file17 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229647/secundario_legislatura.jpg')
# article17 = Article.new(user: user,
#   division: secundario,
#   title: 'Se celebro el dia de la Independencia',
#   subtitle: 'Los alumnos juraron la bandera en el acto realizado en el Secundario ',
#   content1:'En el marco de los festejos por el dia de la Independencia los alumnos y profesores realizaron un acto.',
#   created_at: '09/07/2019')
# article17.photo.attach(io: file17, filename: 'nes.jpg', content_type: 'image/jpg')
# article17.save


# Article.new(user: user,
#   division: primario,
#   title: 'Exposición P.E.P en el primario ',
#   subtitle: 'Educación: la conciencia es bilingüe en el colegio San Patricio',
#   photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229618/feria_de_ciencias_primario.jpg',
#   content1:'Durante la jornada del "Programa de la escuela Primaria".
#   Durante la jornada los alumnos expusieron trabajos con un sello ecologico',
#   created_at: '22/06/2019' )
# Article.new(user: user,
#   division: primario,
#   title: 'Profesoras de Ingles visitaron la exposición P.E.P',
#   subtitle: '',
#   photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/c_scale,w_602/v1585229881/EKea2fxWsAEDcld.jpg',
#   content1:'Profesoras de Ingles visitaron la exposición P.E.P. Tambien se acercaron los padres en una jornada para tomar conciencia sobre el cuidado del medio ambiente.',
#   created_at: '22/06/2019')
# Article.new(user: user,
#   division: secundario,
#   title: 'Visita a la Casa historica',
#   subtitle: 'Los alumnos del Secundario visitaron la Casa historica.',
#   photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585229626/casa_historica_secundario.jpg',
#   content1:'La Casa de Tucumán funciona como museo y es centro tradicional de los festejos por la Declaración de la Independencia. El museo consta de nueve salas de exposiciones, en las que se exhiben muebles y vestuario de época, una reproducción ajustada a la disposición del mobiliario durante las deliberaciones, mapas y cuadros, una reproducción de la edición manuscrita del Acta de la Independencia y una reproducción de la edición impresa, en castellano y aimara. También se exhibe una galería con los miembros del Congreso.

#   El edificio actual está formado por dos cuerpos principales que rodean el primer patio. El primer cuerpo incluye la fachada, un zaguán y dos salones, uno a cada lado de la entrada. A los costados del primer patio hay dos cuartos del lado norte y dos del lado sur.

#   A continuación se encuentra el segundo cuerpo principal, dividido en tres salas: la mayor es la de las sesiones del Congreso, y la única que se conserva del edificio original. También contiene el gran candil y la mesa que presidieron las sesiones del mismo. Las sillas que acompañan a la mesa datan aproximadamente de la fecha de la declaración de la independencia.

#   A continuación sigue el segundo patio o "patio del aljibe", que contiene ejemplares de varios árboles de la región. En ambos costados tiene algunas habitaciones menores. Un tercer patio incluye una última sala, la Galería de Homenajes en el lado norte, y el amplio patio de los sobrerrelieves y el mástil.',
#   created_at: '29/06/2019')
# Article.new(user: user,
#   division: ib,
#   title: 'IB students show creativity, caring and innovation',
#   subtitle: 'In the 50 years since the IB was founded, one thing has remained certain and steadfast: The inspirational drive with which IB students face challenges and aim to make the world a better place.',
#   photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/c_scale,w_637/v1585229052/ES62R6bXsAUJh_Q.jpg',
#   content1:'Participants in the #generationIB campaign were asked to form groups, pick themes, and think about how they could begin to solve some of the greatest challenges humanity faces right now. Teams were established in schools all over the world, themes were chosen, topics were meticulously researched, and incoming pictures and messages of the ongoing work impressed us with their detailed, critical and creative approaches.

#   Among some of the incredible projects submitted, the Genes for Jeans project in Bahrain worked on researching sickle cell disease and the team spoke with patients who have the illness. The team also organised a fundraising event. In India, students worked on setting up their own NGO to address the issue of unused medicines, and managed to organise the supervised redistribution of 137 kilos of medicine to areas in need.

#   In Argentina and the US, Skype calls were organised between young PYP student teams to discuss healthy eating habits. In India, students invented a cost-effective water purifier. And in Hawaii, the Wipeout Crew (pictured above) took on coastal environmental challenges.
#   Solutions are still coming in across all of the IB’s social media channels, and we’ll continue to share the inspiration.',
#   created_at: '24/09/2019')


# Article.new(user: user,
#   division: ib,
#   title: 'Students globally celebrate results',
#   subtitle: 'More than 18,700 Diploma Programme (DP) and Career-related Programme (CP) students around the world will receive their results today',
#   photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585228465/ENXB6ViXsAchvTK.png',
#   content1:'“I warmly congratulate all DP and CP graduates”, said Dr Siva Kumari, Director General of the International Baccalaureate. “I know that your hard work and commitment will be rewarded—both in the immediate term, with the highly-deserved award of your diplomas, and in the future, with enhanced prospects for your further education, your careers, and your lives as a whole.
#   “You have been taught valuable skills for your future in the fourth industrial revolution, in which you will face wholly new contexts and challenges.
#   “Research suggests that an IB education provides skills that both universities and employers value, with independent, critical thinking and the ability to work flexibly and cooperatively. I am confident that you’ve been exceptionally well prepared to make the most of new opportunities, and I wish you all the best in whichever direction you choose to follow.
#   “I would also like to thank all the IB educators—teachers, heads, coordinators—and all those in our great and growing community, including parents, who help to shape succeeding generations of IB students with their drive and passion, enriching lives and making the world a better place through education.”',
# #   created_at: '19/12/2019')


# Article.new(user: user,
#   division: ib,
#   title: 'IB schools win seven International School Awards 2020',
#   subtitle: 'The International School Awards 2020 took place in London on Monday 20th January, and IB World Schools were strongly represented amongst the nominees and winners.',
#   photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585174411/Stryker-Awards-2019-Immigration-Law-Society-600px.jpg',
#   content1:'The International School of the Year Award was presented to St Andrews International School Bangkok, Thailand, for their outstanding environmental initiative aimed at addressing critical environmental challenges.',
#   created_at: '20/02/2020')

# Article.new(user: user,
#   division: secundario,
#   title: 'Los Alumnos empezaron el ciclo lectivo 2020',
#   subtitle: 'Los Alumnos del Secundario empezaron el ciclo lectivo 2020',
#   photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585233917/IMG_3037.jpg',
#   content1:'Los Alumnos del Secundario empezaron el ciclo lectivo 2020.',
#   created_at: '03/03/2020')




   # Article.create(user: user,
  #   category: '',
  #   title: '',
  #   subtitle: '',
  # #   photo: '',
  # #   content1:'',
  # # created_at: '')
  #  # Article.create(user: user,
  # #   category: '',
  # #   title: '',
  # #   subtitle: '',
  # #   photo: '',
  # #   content1:'',
  # # created_at: '')
  # puts 'creating events'
  # archivo = URI.open('https://www.noticiasdel6.com/wp-content/uploads/2018/06/3-1.gif')
  # event = Event.new(user: user,
  #  title: 'Dia de la independencia',
  #  description: 'Se celebra el 9 de julio el dia de nuestra independencia los esperamos a todos',
  #  date: '09/07/2020',
  #  time: '08',
  #  address: 'Las Acacias 2200',
  #  location: 'Pirmario'
  #  )
  # event.photo.attach(io: archivo, filename: 'nes.jpg', content_type: 'image/jpg')
  # event.save
  # archivo2 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585156055/60997228_2240313369348132_358752390532300800_n.jpg')
  # event2 = Event.new(user: user,
  #  title: 'Celebracion del 25 de mayo ',
  #  description: 'El 25 de mayo es una de las fechas patrias más importantes para la República Argentina, que conmemora la Revolución de Mayo. Los esperamos a todos',
  #  date: '25/05/2020',
  #  time: '08',
  #  address: 'Las Acacias 2200',
  #  location: 'Secundario'
  #  )
  # event2.photo.attach(io: archivo2, filename: 'nes.jpg', content_type: 'image/jpg')
  # event2.save
  # archivo3 = URI.open('https://res.cloudinary.com/dw7ox75dg/image/upload/v1585175662/jose.jpg')
  # event3 = Event.new(user: user,
  #   title: 'Acto por el General San Martin ',
  #   description: 'Se Celebra el acto por el paso a la inmortalidad del Padre de la Patria, el general Jose De San Martin',
  #   date: '17/08/2020',
  #   time: '08',
  #   address: 'Las Acacias 2200',
  #   location: 'Jardines'
  #   )
  # event3.photo.attach(io: archivo3, filename: 'nes.jpg', content_type: 'image/jpg')
  # event3.save
  # # archivo = URI.open('')
  # # Event.new(user: user,
  # #   title: '',
  # #   description: '',
  # #   photo: '',
  # #   date: '/0/2020',
  # #   time: '08'
  # # event.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  # # event.save
  # puts 'finsh events'

  # puts 'creating category'
  # primario = Category.create(title: 'Primario', photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585588867/Captura_de_Pantalla_2020-03-30_a_la_s_12.36.43.png')
  # administracion = Category.create(title: 'Administracion', photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585588935/Captura_de_Pantalla_2020-03-30_a_la_s_14.19.06.png')
  # jardines = Category.create(title: 'Jardines', photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585588844/Captura_de_Pantalla_2020-03-30_a_la_s_14.20.07.png')
  # secundario = Category.create(title: 'Secundario', photo: 'https://res.cloudinary.com/dw7ox75dg/image/upload/v1585588869/Captura_de_Pantalla_2020-03-30_a_la_s_14.17.33.png')

  puts 'Creating Galleries'

  puts 'finish'










CourseSession.where(date: Date.new(2016,5,19)).first_or_create(subject: 'Ruby y Rails')
CourseSession.where(date: Date.new(2016,5,20)).first_or_create(subject: 'Apis y Testing')
CourseSession.where(date: Date.new(2016,5,21)).first_or_create(subject: 'Clientes')

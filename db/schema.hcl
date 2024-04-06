table "user" {
  schema = schema.public

  column "id" {
    type = serial
  }

  primary_key {
    columns = [column.id]
  }

  column "fname" {
    type = varchar(255)
    null = false
  }

  column "sname" {
    type = varchar(255)
  }

  column "email" {
    type = varchar(255)
    null = false
  }

  index "email_index" {
    unique = true
    columns = [column.email]
  }
}

schema "public" {
  comment = "Default public schema"
}
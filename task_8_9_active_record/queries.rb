# 8.a
Student.count

# 8.b
Student.where(name: 'Иван').count

# 8.c
Student.where('created_at > ?', '2020-01-09')

# 9.a
Student.where('parent_id IS NULL')

# 9.b
Student.joins(:parents).where('parents.name = ?', 'Марина')

# 9.c
Student.where.not('parent_id IS NULL')

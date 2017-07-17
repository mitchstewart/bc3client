require "messenger/models/entity"
require "messenger/models/company"
require "time"

class Person < Entity

  attr_accessor :attachable_sgid,
                :name,
                :email_address,
                :personable_type,
                :title,
                :bio,
                :created_at,
                :updated_at,
                :admin,
                :owner,
                :time_zone,
                :avatar_url,
                :company

  def initialize(json)
    @id = json['id']
    @attachable_sgid = json['attachable_sgid']
    @name = json['name']
    @email_address = json['email_address']
    @personable_type = json['personable_type']
    @title = json['title']
    @bio = json['bio']
    @created_at = Time.parse(json['created_at'])
    @updated_at = Time.parse(json['updated_at'])
    @admin = json['admin']
    @owner = json['owner']
    @time_zone = json['time_zone']
    @avatar_url = json['avatar_url']

    @company = Company.new
    @company.id = json['company']['id']
    @company.name = json['company']['name']
  end
end
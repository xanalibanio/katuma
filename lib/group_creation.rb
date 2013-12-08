class GroupCreation
  attr_accessor :group, :creator

  # @param [Object] Group
  # @param [Object] User
  def initialize(group, creator)
    @group = group
    @creator = creator
  end

  # Create a new Group and a new UsersUnit
  # and add creator as group admin
  def create
    if self.group.save
      self.add_creator_as_group_admin
    end
  end

  def add_creator_as_group_admin
    @creator.add_role :admin, @group
  end
end
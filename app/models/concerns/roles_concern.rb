module RolesConcern
    extend ActiveSupport::Concern
    def is_basic_role?
        self.role === 'member'
    end

    def is_intermediate_role?
        self.role === 'partner'
    end

    def is_superior_role?
        self.role === 'admin'
    end
end
module PagesHelper
    def user_role
        if current_user.role == 'member'
            'member'
        elsif current_user.role == 'partner'
            'partner'
        elsif current_user.role == 'admin'
            'admin'
        end
    end
end

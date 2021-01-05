class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、その前にconfigure_permitted_parametersが実行されます。

  def after_sign_in_path_for(resource)
    if current_admin
      admins_homes_top_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :nick_name, :sex, :age])
      # devise_parameter_sanitizer.permitでnameのデータ操作を許可するアクションメソッドが指定
    end
end

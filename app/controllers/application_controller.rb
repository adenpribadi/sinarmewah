class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :check_session
      
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    update_attrs = [:first_name, :last_name, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar, :department_id]
    devise_parameter_sanitizer.permit(:account_update, keys: update_attrs)
    
  end
  
  def check_session
    session[:tawk_account_id] = "5df06cc843be710e1d2187c0"
    Contact.all.each do |contact|
      session[:contact] = {
        "id"=> contact.id,
        "icon_address"=> contact.icon_address, "address"=> contact.address,
        "icon_email"=> contact.icon_email, "email"=> contact.email,
        "icon_phone"=> contact.icon_phone, "phone"=> contact.phone,
        "icon_fax"=> contact.icon_fax, "fax"=> contact.fax,
        "facebook"=> contact.facebook,
        "twitter"=> contact.twitter,
        "gplus"=> contact.gplus,
        "linkedin"=> contact.linkedin
      }
    end
    About.all.each do |about|
      session[:about] = {
        "name"=> about.name,
        "description_footer"=> about.description_footer,
        "image"=> about.image.url,
        "image_thumb"=> about.image.thumb.url
      }
    end

    session[:sitemap] = Array.new
    Page.where(:status=> 'active').order("sequence asc").each do |page|
      session[:sitemap] += [ 
        {
          "name"=> page.name,
          "link"=> page.link,
          "sub1_name"=> page.sub1_name,
          "sub1_link"=> page.sub1_link,
          "sub2_name"=> page.sub2_name,
          "sub2_link"=> page.sub2_link
        }
      ]
    end
  end
  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end


  rescue_from ActionController::InvalidAuthenticityToken, with: :rescue_422
  

  def rescue_422
    redirect_to '/422'
  end

end

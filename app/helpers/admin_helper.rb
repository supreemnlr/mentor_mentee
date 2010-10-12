module AdminHelper
  # To display flash message(notice,success,error,warning) for AJAX
  #----------------------------------------------------------------------------
  def display_flash(message,flash_type)
    case flash_type
      when 'success'
      page[:flash].replace "<div id='flash' class='flash_success'><span class='message'>#{message}</span></div>" 
      when 'error'
      page[:flash].replace "<div id='flash' class='flash_error'><span class='message'>#{message}</span></div>" 
    else # for flash notice
      page[:flash].replace "<div id='flash' class='flash_notice'><span class='message'>#{message}</span></div>" 
    end
    page.delay(3) do  
      page.visual_effect :fade, 'flash'  
    end 
  end  
  
  #----------------------------------------------------------------------------
  def link_to_remote_edit(url)  
    link_to_remote("Edit",
      :method => :get,
      :url    =>url
    )
  end
  #----------------------------------------------------------------------------
  def link_to_cancel(url)
    link_to_remote("Cancel", :url => url, :method => :get, :with => "{ cancel: true }")
  end
  #----------------------------------------------------------------------------
  def link_to_close(controller,action,id=nil)
    content_tag("div", "x",
      :class => "close", :title => "Close form",
      :onmouseover => "this.style.background='lightsalmon'",
      :onmouseout => "this.style.background='lightblue'",
      :onclick => remote_function(:url =>{:controller=>controller,:action=>action,:id=>id}, :method => :get, :with => "{ cancel: true }")
    )
  end
  #                          Admin Tabs
  #----------------------------------------------------------------------------
   def admin_tabs   
    @tabs = ['Dashboard','Manage Accounts','Category']
   
  end
  #                          Search form for all Models
  #----------------------------------------------------------------------------
 
  
 
  
  def cell(label, value)
    "<tr>
      <td class='label' nowrap='nowrap'>#{label}</td>
      <td class='value'>#{value}</td>
    </tr>"
  end
  
  def cell_separator
    "<tr>
      <td colspan='2' class='separator'></td>
    </tr>"
  end

  end

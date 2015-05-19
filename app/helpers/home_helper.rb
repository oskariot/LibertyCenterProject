module HomeHelper
  def href_to_object(object)
    'href='+object.class.table_name+'/'+object.id.to_s
  end
end

module PostsHelper
  def bulletin_name(bulletin_id)
    Bulletin.find(bulletin_id).title
  end
end

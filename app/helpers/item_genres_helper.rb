module ItemGenresHelper
  def get_item_genre_path(item_genre_id, path_name)
    case path_name
      when "item_genre" then
        item_genre_path(item_genre_id)
      when "pick_up" then
        step4_path(item_genre_id)
      when "drops" then
        phase4_path(item_genre_id)
    end
  end
end

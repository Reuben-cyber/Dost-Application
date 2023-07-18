class Home<ApplicationRecord
    belongs_to :interest
    belongs_to :category
    belongs_to :user
    
    def self.category_by_users(homes,current_user)
        similarity_percent = {}
        similar_category = {}
        usercatarray = homes.pluck(:user_id,:category_id)
        user_category_hash = usercatarray.group_by(&:first).transform_values { |pairs| pairs.map(&:last) }
        currentid = current_user.id
        current_user_category = user_category_hash[currentid]
        rest_user_category_hash = user_category_hash.except(currentid)
        rest_user_category_hash.each do |user_id, category_list|
           Rails.logger.info ("inside loop")   
           Rails.logger.info ("#{current_user_category} helo" + " #{category_list} ") 
           similarity_percentage = category_similarity_percentage(current_user_category, category_list)  
           similarity_percent[user_id] = similarity_percentage  
           similar_category[user_id] = current_user_category & category_list
        end
        [similarity_percent,similar_category]
        
    end
    def self.category_similarity_percentage(arr1, arr2)  
        smaller_size = [arr1.length, arr2.length].min  
        intersection_size = (arr1 & arr2).length
        similarity_percentage = intersection_size.to_f / smaller_size * 100  
        similarity_percentage.round(2)
    end

    def self.get_categories(similar_category_hash,category)
        selectedcategory = {}
        similar_category_hash.each do |userid,categories_id|
            selectedcategory[userid] = categories_id.map{|id| category.find {|c| c[:id] == id}[:name]}
        end
        selectedcategory
  
    end

end


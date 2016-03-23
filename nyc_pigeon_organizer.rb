def nyc_pigeon_organizer(data)
  pigeons = {}

  data.each do |att, valueHash|
    valueHash.each do |trait, nameArray|
      nameArray.each do |name|
        if pigeons.include?(name) && pigeons[name].include?(att)
          pigeons[name][att] << trait.to_s
        elsif pigeons.include?(name) && (!(pigeons[name].include?(att)))
          pigeons[name].merge!(att => [trait.to_s])
        else
          pigeons[name] = {att => [trait.to_s]}
        end
      end
    end
  end
  pigeons
end

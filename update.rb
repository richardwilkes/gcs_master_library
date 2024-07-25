require "json"


def leaves(root)
  root.each do |node|
    if(node["children"].nil?)
      yield node
    else
      leaves(node["children"]) do |node2|
        yield node2
      end
    end
  end
end

IGNORE = [
  "sUyJha-nzo-BupJ2J" # Hopolomachia Push
]

SKILLS = {
  "Acrobatics ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sX8y2AmeL5DLlQl17"}},
  "Combat Art (Judo)"=>{"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sWEitxqi3RfTcRTOl"}, "replacements"=>{"Hard Skill"=> "Judo"}},
  "Combat Art (Force Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Force Sword"}},
  "Parry Missile-Weapons ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"snO8a_369cUR1W1i-"}},
  "Blind Fighting ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sY6nsMQaWVxXTcdRJ"}},
  "Flying Leap ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s85wQHwMo5pSvfiZv"}},
  "Kiai ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sXDpgSX-oeFkMeAmo"}},
  "Mental Strength ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sxDgiqntG5jIWBGld"}},
  "Power Blow ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sBCZF1apRHAng7GFF"}},
  "Precognitive Parry ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"s8fNhX9s49ipCqRdW"}},
  "Armoury (Force Swords)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sNzqPNXe6m0OPGuJ5"}, "replacements"=>{"Armor type"=>"Force Swords"}},
  "Fast-Draw (Force Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sR4lL75U71esPuICI"}},
  "Jumping ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"so6xAKJVgFYRWYyQA"}},
  "Karate ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sU4bjpp9TsvnRavPN"}},
  "Savoir-Faire (Dojo)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s7nXHa7mrKbU2X3wz"}},
  "Wrestling ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s8parl7zgbXys0OF2"}},
  "Immovable Stance ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sf7mpZ2FYaf1nj407"}},
  "Invisibility Art ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s95OvIZ9p5QRj0cz6"}},
  "Pressure Points ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sqyFrR5b7x_IRMZsk"}},
  "Push ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sqd0c1fRmbY6oISKb"}},
  "Breath Control ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"spMUh1AbXRoFm1hqU"}},
  "Judo ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sWVqswxT3hi7db0kD"}},
  "Combat Art (Knife)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sePGarpc1rro3I16q"}, "replacements"=>{"Easy Skill"=>"Knife"}},
  "Combat Art (Staff)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Staff"}},
  "Theology (Omoto)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sMIRD7ORV8Bmze6Af"}, "replacements"=>{"Specialty"=>"Omoto"}},
  "Combat Art (Two-Handed Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Two-Handed Sword"}},
  "Broadsword ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sW0On3Z4nRf_QVqy1"}},
  "Shortsword ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s-DdOtFsU7dX4Ttfz"}},
  "Staff ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sZnijHP17_9lk1OPG"}},
  "Theology (Shinto)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sMIRD7ORV8Bmze6Af"}, "replacements"=>{"Specialty"=>"Shinto"}},
  "Combat Sport (Bow)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sRHz1wOm309d71vq9"}, "replacements"=>{"Average Skill"=>"Bow"}},
  "Zen Archery ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"stl-5klG0QJVibdRs"}},
  "Armoury (Missile Weapons)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"svgYlLM0ce7-lGIgW"}},
  "Camouflage ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sKtd60c-jdtMDfOIt"}},
  "Fast-Draw (Arrow)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sxpRrrGDJlHzh1VyN"}},
  "Hiking ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s9b5e-6c-ljOeUtt5"}},
  "Intimidation ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"shun-iitiwyWbrGcF"}},
  "Axe/Mace ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sCrVXzblht0cVVzWN"}},
  "Flail ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sy28RZa8MDBQXru82"}},
  "Jitte/Sai ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sTZGCst3O84rAPalE"}},
  "Knife ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"slOONrK6jDHvcRoGx"}},
  "Kusari ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sYPHN5czQyyV8OVll"}},
  "Main-Gauche ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s10DaCiFKFSDx8aPC"}},
  "Polearm ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sMbYJPn9E7PHx-Aob"}},
  "Rapier ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s-y06a7Fcnd6VGLQ-"}},
  "Pressure Points (Bow)"=> {},
  "Flying Leap (Horse)"=> {},
  "Immovable Stance (Horse)"=> {},
  "Light Walk (Horse)"=> {},
  "Combat Art (Bow)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Bow"}},
  "Riding (Equines)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sw6twMMqbSiWNaKtg"}},
  "Thrown Weapon (Spear)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sJnzh1OaoKVZdj02_"}},
  "Engineer (Combat)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"ss6-XDMsx8WBWJA0q"}},
  "Animal Handling (Equines)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sXJr0hlUYaTTuJrPx"}},
  "Combat Sport (Boxing)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sRHz1wOm309d71vq9"}, "replacements"=>{"Average Skill"=>"Boxing"}},
  "Thrown Weapon (Knife)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s3KM8dub0Xn5_9oPI"}},
  "Combat Art (Smallsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Smallsword"}},
  "Combat Art (Broadsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Broadsword"}},
  "Combat Art (Main-Gauche)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Main-Gauche"}},
  "Savoir-Faire (High Society)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s4WxUyOWPwvLxBypO"}},
  "Combat Art (Shortsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Shortsword"}},
  "Combat Art (Rapier)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Rapier"}},
  "Combat Sport (Rapier)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sRHz1wOm309d71vq9"}, "replacements"=>{"Average Skill"=>"Rapier"}},
  "Combat Art (Shield (Buckler))"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sePGarpc1rro3I16q"}, "replacements"=>{"Easy Skill"=>"Shield (Buckler)"}},
  "Liquid Projector (Flamethrower)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"swv1z7CCsWGN-Vu-H"}},
  "Combat Art (Karate)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sWEitxqi3RfTcRTOl"}, "replacements"=>{"Hard Skill"=>"Karate"}},
  "Hobby Skill (Feats of Strength)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sDLf4crz0sGRjVDFi"}, "replacements"=>{"Physical Hobby"=>"Feats of Strength"}},
  "Thrown Weapon (Shuriken)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s6sHR8eiTIhFZvXjf"}},
  "Combat Sport (Judo)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sk-wecFOBKhE2i2r0"}, "replacements"=>{"Hard Skill"=>"Judo"}},
  "Combat Sport (Karate)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sk-wecFOBKhE2i2r0"}, "replacements"=>{"Hard Skill"=>"Karate"}},
  "Combat Sport (Two-Handed Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sRHz1wOm309d71vq9"}, "replacements"=>{"Average Skill"=>"Two-Handed Sword"}},
  "Armoury (Melee Weapons)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s5huq4lGmPah5Mzn3"}},
  "Combat Art (Axe/Mace)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Axe/Mace"}},
  "Combat Art (Flail)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sWEitxqi3RfTcRTOl"}, "replacements"=>{"Hard Skill"=>"Flail"}},
  "Combat Art (Jitte/Sai)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Jitte/Sai"}},
  "Combat Art (Tonfa)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Tonfa"}},
  "Combat Art (Kusari)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sWEitxqi3RfTcRTOl"}, "replacements"=>{"Hard Skill"=>"Kusari"}},
  "Combat Art (Polearm)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Polearm"}},
  "Combat Art (Spear)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Spear"}},
  "Combat Art (Two-Handed Axe/Mace)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbq6IzbvnRtd8CZjg"}, "replacements"=>{"Average Skill"=>"Two-Handed Axe/Mace"}},
  "Guns (Musket)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sbiIlbYys5UJeJTxN"}},
  "Guns (Pistol)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sfWUh9TJBpQuwZBVo"}},
  "Guns (Rifle)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"s3hbw6Ngz9_5OFNcR"}},
  "Animal Handling (Dogs)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sTRQrWAiJ_rLw1tvy"}},
  "Combat Sport (Smallsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sRHz1wOm309d71vq9"}, "replacements"=>{"Average Skill"=>"Smallsword"}},
  "Combat Sport (Saber)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sRHz1wOm309d71vq9"}, "replacements"=>{"Average Skill"=>"Saber"}},
  "Combat Sport (Broadsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"sRHz1wOm309d71vq9"}, "replacements"=>{"Average Skill"=>"Broadsword"}},
}

TECHNIQUES = {
  
}

def normalize()
  `/home/smithkm/bin/gcs -c "Library/Martial Arts"`
end

JSON.dump_default_options[:indent]="\t"
JSON.dump_default_options[:object_nl]="\n"
JSON.dump_default_options[:array_nl]="\n"
JSON.dump_default_options[:space]=" "

Dir.glob("Library/Martial Arts/*/**/*.gct").each do |style_filename|
  puts "****"
  puts "* #{style_filename}"
  puts "****"
  style=open(style_filename,'r') do |style_file|
    JSON.load(style_file)
  end
  
  leaves(style["skills"]) do |skill|

    next if skill.has_key? "source"
    next if IGNORE.include? skill["id"]
    
    if(skill["difficulty"].include? "/")
      key = "#{skill['name']} (#{skill['specialization']})"
      puts "S #{key}"
      if(SKILLS.include? key)
        skill.merge! SKILLS[key]
      else
        found_skills = []
        Dir.glob("**/*.skl").each do |skill_lib_filename|
          next unless skill_lib_filename =~ /(Basic Set|Martial Arts)/
          skill_lib = open(skill_lib_filename,'r') do |skill_lib_file|
            JSON.load(skill_lib_file)
          end
          leaves(skill_lib["rows"]) do |lib_skill|
            found_key="#{lib_skill['name']} (#{lib_skill['specialization']})"
            if skill["name"]==lib_skill["name"]
              if(lib_skill["specialization"]==skill["specialization"])
                found_skills<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{skill_lib_filename}", "id"=>"#{lib_skill["id"]}"}}]
                # puts " -  #{lib_skill['name']} (#{lib_skill['specialization']})  --  \"#{key}\"=> {\"source\"=>{\"library\"=>\"smithkm/gcs_master_library\", \"path\"=>\"#{skill_lib_filename}\", \"id\"=>\"#{lib_skill["id"]}\"}}"
              elsif lib_skill["specialization"]=~/^\@.*?\@$/
               found_skills<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{skill_lib_filename}", "id"=>"#{lib_skill["id"]}"}, "replacements"=>{lib_skill['specialization'][1...-1]=>skill["specialization"]}}]
               #puts " -  #{lib_skill['name']} (#{lib_skill['specialization']})  --  \"#{key}\"=> {\"source\"=>{\"library\"=>\"smithkm/gcs_master_library\", \"path\"=>\"#{skill_lib_filename}\", \"id\"=>\"#{lib_skill["id"]}\"}, \"replacements\"=>{\"#{lib_skill['specialization'][1...-1]}\"=>\"#{skill["specialization"]}\"}}"
              end
            end
          end          
        end
        if found_skills.size == 1
          skill.merge! found_skills[0][1]
        elsif found_skills.empty?
          puts " *** ERRROR #{key} could not find match"
          normalize()
          exit
        else
          found_skills.each do |found_key, found_skill|
            puts " - #{found_key}  --  \"#{key}\"=> #{found_skill.inspect}"
          end
           normalize()
          exit
        end
      end
    else
      puts "T #{skill['name']} (#{skill['default']['name']})"
    end
    
    
  end
  
  open(style_filename,'w') do |style_file|
    JSON.dump(style, style_file)
  end

end

normalize()

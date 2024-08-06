require "json"
require "set"

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
  "sUyJha-nzo-BupJ2J", # Hopolomachia Push
  "qcbaTmfyu2dj08U5W", # Aikido Acrobatic stand
  "qOD4wWVWPqAzijWDQ", # Aikido Breakfall
  "q-wbdfEAqDd4cFV_t", # Aikido Ground Fighting
  "qwrLlY7Wx2HyXLrL5",
  "qlgvEwHUzbxVMBFEv",
  "q-eJ4dofW54uaWWcy",
  "qCcYWB3sCQZTrWhLe",
  "qgqZQOgN73_ZslFsG",
  "qbhSXDNqOyJNqo3Ae",

  "trPM4mpwMJnj-tqdg", # Basic Set Metal Quirk
  "tHv97hIejdmH2l3xH", # Basic Set Physical Quirk
  "t22BmBtcIvbGV0tnb", # Basic Set Missing Disadvantage
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
  "Feint (Force Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qGOkewCG1_HhBwpEn"}},
  "Whirlwind Attack (Force Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qFePYS23kanaYnTPM"}, "replacements"=>{"Melee Weapon Skill"=>"Force Sword"}},
  "Finger Lock (Arm Lock)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qYM2DzTFNsKqSZCHD"}},
  "Arm Lock (Judo)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qejpSeVSRZK4yn5A5"}},
  "Ground Fighting (Judo)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"q4dXeT1nQwBNKcZbG"}, "replacements"=>{"Combat Skill"=>"Judo"}},
  "Disarming (Judo)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"q11aSGW0Y6yrbz_e5"}, "replacements"=>{"Unarmed or Melee Weapon Skill"=>"Judo"}},
  "Close Combat (Bow)"=> {},
  "Retain Weapon (Bow)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"q8aKdq6bj2oMv--f3"}, "replacements"=>{"Weapon Skill"=>"Bow"}},
  "Horse Archery (Bow)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qq5DZpMNDLEjAu05C"}},
  "Feint (Shortsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qyEYoi3JfBXv05QsV"}},
  "Feint (Shield)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qlf8-jNd24f1dDJf6"}, "replacements"=>{"Unarmed or Melee Weapon Skill"=>"Shield"}},
  "Retain Weapon (Shortsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qfxYLT4lYCKFB6Zwu"}},
  "Retain Weapon (Spear)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qVd4AfYpe8IZSKeb5"}, "replacements"=>{"Melee Weapon Skill"=>"Spear"}},
  "Elbow Strike (Karate)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qJJkAOfGC0eHr0Wlj"}},
  "Head Lock (Judo)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qLPRxPtEJrVjH2ogS"}},
  "Knee Strike (Karate)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qDNr2oliZ5yOymrmZ"}},
  "Ground Fighting (Karate)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qT8kD6V0un5JZRwU4"}},
  "Ground Fighting (Wrestling)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"q4dXeT1nQwBNKcZbG"}, "replacements"=>{"Combat Skill"=>"Wrestling"}},
  "Disarming (Spear)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"q11aSGW0Y6yrbz_e5"}, "replacements"=>{"Unarmed or Melee Weapon Skill"=>"Spear"}},
  "Disarming (Staff)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"q11aSGW0Y6yrbz_e5"}, "replacements"=>{"Unarmed or Melee Weapon Skill"=>"Staff"}},
  "Reverse Grip (Broadsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qD3MecSEmG2h4ks9e"}, "replacements"=>{"One-Handed Weapon Skill"=>"Broadsword"}},
  "Reverse Grip (Knife)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qD3MecSEmG2h4ks9e"}, "replacements"=>{"One-Handed Weapon Skill"=>"Knife"}},
  "Reverse Grip (Shortsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qD3MecSEmG2h4ks9e"}, "replacements"=>{"One-Handed Weapon Skill"=>"Shortsword"}},
  "Reverse Grip (Spear)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qD3MecSEmG2h4ks9e"}, "replacements"=>{"One-Handed Weapon Skill"=>"Spear"}},
  "Choke Hold (Judo)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Skills.skl", "id"=>"qVZntC-x_8ebfCxIW"}},
  "Close Combat (Smallsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qHgRlTejK8kg_4j_m"}, "replacements"=>{"Reach 1 Weapon Skill"=>"Smallsword"}},
  "Grand Disarm (Smallsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qQzll_MC417uwsomn"}, "replacements"=>{"Fencing Weapon Skill"=>"Smallsword"}},
  "Dual-Weapon Defense (Rapier)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Rapier"}},
  "Dual-Weapon Defense (Main-Gauche)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Main-Gauche"}},
  "Grand Disarm (Rapier)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qQzll_MC417uwsomn"}, "replacements"=>{"Fencing Weapon Skill"=>"Rapier"}},
  "Close Combat (Rapier)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qHgRlTejK8kg_4j_m"}, "replacements"=>{"Reach 1 Weapon Skill"=>"Rapier"}},
  "Close Combat (Shortsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qHgRlTejK8kg_4j_m"}, "replacements"=>{"Reach 1 Weapon Skill"=>"Shortsword"}},
  "Dual-Weapon Defense (Two-Handed Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Two-Handed Sword"}},
  "Reverse Grip (Two-Handed Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qnI5XcgjTif3O65gW"}, "replacements"=>{"Two-Handed Weapon Skill"=>"Two-Handed Sword"}},
  "Dual-Weapon Defense (Shortsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Shortsword"}},
  "Reverse Grip (Axe/Mace)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qD3MecSEmG2h4ks9e"}, "replacements"=>{"One-Handed Weapon Skill"=>"Axe/Mace"}},
  "Reverse Grip (Jitte/Sai)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qD3MecSEmG2h4ks9e"}, "replacements"=>{"One-Handed Weapon Skill"=>"Jitte/Sai"}},
  "Dual-Weapon Defense (Shield)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"q-XuDYLJuSbsGmjSm"}, "replacements"=>{"Blocking Combat Skill"=>"Shield"}},
  "Dual-Weapon Defense (Flail)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Flail"}},
  "Dual-Weapon Defense (Axe/Mace)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Axe/Mace"}},
  "Dual-Weapon Defense (Jitte/Sai)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Jitte/Sai"}},
  "Dual-Weapon Defense (Staff)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Staff"}},
  "Dual-Weapon Defense (Tonfa)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Tonfa"}},
  "Dual-Weapon Defense (Broadsword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Broadsword"}},
  "Dual-Weapon Defense (Knife)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Knife"}},
  "Dual-Weapon Defense (Polearm)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Polearm"}},
  "Dual-Weapon Defense (Spear)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Spear"}},
  "Dual-Weapon Defense (Two-Handed Axe/Mace)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qCXEAzI-ewF60vBEK"}, "replacements"=>{"Parrying Combat Skill"=>"Two-Handed Axe/Mace"}},
  "Close Combat (Two-Handed Sword)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Skills.skl", "id"=>"qHgRlTejK8kg_4j_m"}, "replacements"=>{"Reach 1 Weapon Skill"=>"Two-Handed Sword"}}
  
}

TRAITS = {
  "Talent (Forceful Chi) ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Power Ups/Power Ups Traits.adq", "id"=>"tILT5DL-euLhs6NdO"}},
  "Talent (Inner Balance) ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Power Ups/Power Ups Traits.adq", "id"=>"t5T8Izo6tqE0FHmsl"}},
  "Code of Honor (@Subject@)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Traits.adq", "id"=>"tYKd1V2ZzpN6-3H8E"}},
  "Skill Adaptation (Acrobatic Stand defaults to Judo Art) (Lets you base Techniques on different skill.)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"tKyqtFwOeGWrJ9jPL"}, "replacements"=>{"Speciality"=>"Acrobatic Stand defaults to Judo Art"}},
  "Armor Familiarity (Judo) (Let you ignore one encumbrance level)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"tXhB1YEtxrzarLhO6"}, "replacements"=>{"Skill"=>"Judo"}},
  "Extra Fatigue Points ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Basic Set/Basic Set Traits.adq", "id"=>"tsIfS0jZqdshsDFOM"}},
  "Talent (Animal Friend) ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Power Ups/Power Ups Traits.adq", "id"=>"tQTxX0r4i-XLx942S"}},
  "Talent (Musical Ability) ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Power Ups/Power Ups Traits.adq", "id"=>"tLj86VHSw45Z9pRsQ"}},
  "Reputation (Dirty Tricks) ()"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"twqQpveqPpnS9szSJ"}, "replacements"=>{"Signature\\ Move\\ as\\ a\\ Quick\\ Contest"=>"Dirty Tricks"}}
}
TRAITS_BY_NAME ={
  "Code of Honor (Bushido)"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"tU8574DkPhyM06wgy"}},
  "Acrobatic Feints"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"tY4uVjzRzVbrWMZbH"}},
  "Acrobatic Kicks"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"t_TymR9O5N_htT6No"}},
  "Clinch"=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"t_BDJ5STtHyWG0kUw"}},
}
TRAITS_BY_NAME_REGEX ={
  /^Unusual Training \((?<Cinematic Skill>.*?)\)$/=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"tpUrun7KhUhOLGZsk"}},
  /^Style Perks \((?<Style Name>.*?)\)$/=>Hash.new,
  /^Special Excercises \((?<Trait>.*?)\)$/=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"t1XEhNJ5DSJqy5Osv"}},
  /^Skill Adaptation \((?<Speciality>.*?)\)$/=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"tKyqtFwOeGWrJ9jPL"}},
  /^Unusual Training \((?<Cinematic Skill>.*?)\)$/=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"tpUrun7KhUhOLGZsk"}},
  /^Off-Hand Weapon Training \((?<Weapon>.*?)\)$/=> {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"Library/Martial Arts/Martial Arts Traits.adq", "id"=>"thw7_FAQ8ZHAD2N0b"}},
 
}
def normalize()
  `/home/smithkm/bin/gcs -c "Library/Martial Arts"`
end

def query_user(found)
  
end

JSON.dump_default_options[:indent]="\t"
JSON.dump_default_options[:object_nl]="\n"
JSON.dump_default_options[:array_nl]="\n"
JSON.dump_default_options[:space]=" "

def find_replacements(value, replacements=Set.new)
  case value
  when Hash
    value.each do |key, child|
      find_replacements(child, replacements) unless key == "children"
    end
  when String
    replacements+=value.scan(/\@.+?\@/)
  when Array
    value.each do |child|
      find_replacements(child, replacements)
    end
  end
  replacements
end

def replacements_to_regex(string)
  Regexp.new("^"+string.gsub(/[^\@]+/) {|match| Regexp.escape(match)}.gsub(/\@.+?\@/){|match| "(?<#{match[1...-1]}>.+?)"}+"$")
end

Dir.glob("Library/Martial Arts/*/**/*.gct").each do |style_filename|
  puts "****"
  puts "* #{style_filename}"
  puts "****"
  style=open(style_filename,'r') do |style_file|
    JSON.load(style_file)
  end
  
  leaves(style["traits"]) do |trait|
    key = trait["name"]
    key = "#{trait['name']} (#{trait['notes']})"
    
    next if trait["name"].start_with? "Style Familiarity"
    
    # It already has a source
    next if trait.has_key? "source"

    # It is in the ignore list
    next if IGNORE.include? trait["id"]

    from_trait_by_regex=TRAITS_BY_NAME_REGEX.find do |pattern, value|
      pattern=~trait["name"]
    end

    #p from_trait_by_regex
    p trait
    
    if(not from_trait_by_regex.nil?)
      trait.merge! from_trait_by_regex[1]
    elsif(TRAITS.include? key)
      # It's in the known traits list
      trait.merge! TRAITS[key]
    elsif(TRAITS_BY_NAME.include? trait["name"])
      # It's in the known traits list
      trait.merge! TRAITS_BY_NAME[trait["name"]]
    else
      found_traits = []
      Dir.glob("**/*.adq").each do |trait_lib_filename|
        next unless trait_lib_filename =~ /(Basic Set|Martial Arts|Power Ups)/
        trait_lib = open(trait_lib_filename,'r') do |trait_lib_file|
          JSON.load(trait_lib_file)
        end
        leaves(trait_lib["rows"]) do |lib_trait|
          found_key = "#{lib_trait['name']} (#{lib_trait['notes']})"
          next if IGNORE.include? lib_trait["id"]

          if key==found_key
            replacements = find_replacements(lib_trait)
            if replacements.empty?
              found_traits<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{trait_lib_filename}", "id"=>"#{lib_trait["id"]}"}}]
            else
              found_traits<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{trait_lib_filename}", "id"=>"#{lib_trait["id"]}"}, "replacements"=> replacements.to_h{|key| [key, "TODO"]} }]
            end
          else
            if (replacements_to_regex(lib_trait["name"])=~ trait["name"])
              captures = $~.named_captures
              if ((lib_trait["notes"].nil? and trait["notes"].nil?) or replacements_to_regex(lib_trait["notes"]||"")=~ trait["notes"])
                captures.merge! $~.named_captures
                found_traits<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{trait_lib_filename}", "id"=>"#{lib_trait["id"]}"}, "replacements"=> captures}]
              end
            end
          end
        end
      end
      if found_traits.size == 1
        # Exactly one match so use it
        trait.merge! found_traits[0][1]
      elsif found_traits.empty?
        puts " *** ERRROR #{key} could not find match"
        normalize()
        exit
      else
        no_replace = found_traits.select {|found_key, found_trait| not found_trait.has_key? "replacements"}
        if no_replace.size == 1
          trait.merge! no_replace[0][1]
        elsif found_traits.size == 1
          if found_traits[0][1]["replacements"].values.none? {|replacement| replacement=="TODO"}
            trait.merge! not_replace_all[0][1]
          else
            # TODO
            found_traits.each do |found_key, found_trait|
              puts " - #{found_key}  --  \"#{key}\"=> #{found_trait.inspect}"
            end
            normalize()
            exit
          end
        else
          # Multiple matches, stop and let user decide what to add to known traits list
          found_traits.each do |found_key, found_trait|
            puts " - #{found_key}  --  \"#{key}\"=> #{found_trait.inspect}"
          end
          normalize()
          exit
        end
      end
    end
      
    
  end
 
  leaves(style["skills"]) do |skill|

    # It already has a source
    next if skill.has_key? "source"

    # It is in the ignore list
    next if IGNORE.include? skill["id"]
    
    if(skill["difficulty"].include? "/")
      # It's a skill
      key = "#{skill['name']} (#{skill['specialization']})"
      puts "S #{key}"
      if(SKILLS.include? key)
        # It's in the known skills list
        skill.merge! SKILLS[key]
      else
        # Look for matching skills
        found_skills = []
        Dir.glob("**/*.skl").each do |skill_lib_filename|
          next unless skill_lib_filename =~ /(Basic Set|Martial Arts|Power)/
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
          # Exactly one match so use it
          skill.merge! found_skills[0][1]
        elsif found_skills.empty?
          puts " *** ERRROR #{key} could not find match"
          normalize()
          exit
        else
          # Multiple matches, stop and let user decide what to add to known skills list
          found_skills.each do |found_key, found_skill|
            puts " - #{found_key}  --  \"#{key}\"=> #{found_skill.inspect}"
          end
          normalize()
          exit
        end
      end
    else
      # It's a technique
      key = "#{skill['name']} (#{skill['default']['name']})"
      puts "T #{key} (#{skill["id"]})"
      if(TECHNIQUES.include? key)
        # It's in the known skills list
        skill.merge! TECHNIQUES[key]
      else
        # Look for matching skills
        found_skills = []
        Dir.glob("**/*.skl").each do |skill_lib_filename|
          next unless skill_lib_filename =~ /(Basic Set|Martial Arts|Power)/
          skill_lib = open(skill_lib_filename,'r') do |skill_lib_file|
            JSON.load(skill_lib_file)
          end
          leaves(skill_lib["rows"]) do |lib_skill|
            found_default = lib_skill.dig("default", "name")
            found_key="#{lib_skill['name']} (#{found_default})"
            if skill["name"].start_with? "Targeted Attack" and lib_skill["name"].start_with? "Targeted Attack"
              cap = /Targeted Attack \((?<Skill>.*?) (?<Attack>\w+?)\/(?<Location>.*?)\)/.match(skill["name"]).named_captures
              if(cap["Attack"]=="Grapple")
                if(lib_skill['name'].include? "Grapple")
                  found_skills<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{skill_lib_filename}", "id"=>"#{lib_skill["id"]}"}, "replacements"=>{"Skill"=>cap["Skill"]}}]
                end
              elsif(lib_skill["name"].end_with? "#{cap["Location"]})")
                unless(lib_skill['name'].include? "Grapple")
                  found_skills<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{skill_lib_filename}", "id"=>"#{lib_skill["id"]}"}, "replacements"=>{"Skill"=>cap["Skill"], "Attack"=>cap["Attack"]}}]
                end
              end
            elsif skill["name"]==lib_skill["name"]
              if(found_default==skill['default']['name'])
                found_skills<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{skill_lib_filename}", "id"=>"#{lib_skill["id"]}"}}]
              elsif found_default=~/^\@.*?\@$/
                found_skills<<[found_key, {"source"=>{"library"=>"smithkm/gcs_master_library", "path"=>"#{skill_lib_filename}", "id"=>"#{lib_skill["id"]}"}, "replacements"=>{found_default[1...-1]=>skill["default"]["name"]}}]
              end
            end
          end
        end          
        if found_skills.size == 1
          # Exactly one match so use it
          skill.merge! found_skills[0][1]
        elsif found_skills.empty?
          puts " *** ERRROR #{key} could not find match"
          normalize()
          exit
        else
          no_replace = found_skills.select {|found_key, found_skill| not found_skill.has_key? "replacements"}
          p no_replace
          if(no_replace.size == 1)
            skill.merge! no_replace[0][1]
          elsif(no_replace.size == found_skills.size or no_replace.size == 0)
            basic = found_skills.select {|found_key, found_skill| found_skill["source"]["path"].include? "Basic Set"}
            if (basic.size==1)
              skill.merge! basic[0][1]
            else
              # Multiple matches, stop and let user decide what to add to known skills list
              found_skills.each do |found_key, found_skill|
                puts " - #{found_key}  --  \"#{key}\"=> #{found_skill.inspect}"
              end
              normalize()
              exit
            end
          
          else
            # Multiple matches, stop and let user decide what to add to known skills list
            found_skills.each do |found_key, found_skill|
              puts " - #{found_key}  --  \"#{key}\"=> #{found_skill.inspect}"
            end
            normalize()
            exit
          end
        end
      end

      
    end
    
    
  end

  puts "Writing #{style_filename}"
  
  open(style_filename,'w') do |style_file|
    JSON.dump(style, style_file)
  end

end

normalize()

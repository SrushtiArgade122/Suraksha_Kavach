final Map<String, List<Map<String, dynamic>>> disasterData = {
  // 🔥 FIRE
  "Fire": List.generate(20, (i) {
    final questions = [
      {
        "question": "What should you shout if you see fire?",
        "options": ["Help", "Fire", "Run", "Stop"],
        "answerIndex": 1,
        "flashcardTip":
            "If you see fire, shout 'Fire!' loudly to alert others. This helps people become aware of danger quickly. Never stay silent. Inform nearby people and move to safety."
      },
      {
        "question": "Fire emergency number?",
        "options": ["100", "101", "102", "108"],
        "answerIndex": 1,
        "flashcardTip":
            "Dial 101 to call the fire brigade. Speak clearly and tell the exact location with landmarks. Stay calm and follow instructions given on the call."
      },
      {
        "question": "If clothes catch fire?",
        "options": ["Run", "Hide", "Stop Drop Roll", "Jump"],
        "answerIndex": 4,
        "flashcardTip":
            "If your clothes catch fire, STOP running, DROP to the ground, and ROLL to put out flames. Running makes fire spread faster."
      },
      {
        "question": "Best way to exit fire building?",
        "options": ["Lift", "Stairs", "Jump", "Hide"],
        "answerIndex": 1,
        "flashcardTip":
            "Always use stairs during fire. Lifts can stop due to power failure and fill with smoke. Follow exit signs and stay calm."
      },
      {
        "question": "Why stay low in fire?",
        "options": ["Air cools", "Smoke rises", "Heat rises", "None"],
        "answerIndex": 3,
        "flashcardTip":
            "Smoke rises upwards, so cleaner air is near the ground. Crawl low and cover your nose with cloth to breathe safely."
      },
      {
        "question": "Which extinguisher for electrical fire?",
        "options": ["Water", "Foam", "CO2", "Oil"],
        "answerIndex": 2,
        "flashcardTip":
            "Use CO2 extinguisher for electrical fires. Never use water because it can cause electric shock."
      },
      {
        "question": "Before opening a door in fire?",
        "options": ["Ignore", "Touch it", "Open fast", "Kick it"],
        "answerIndex": 4,
        "flashcardTip":
            "Touch the door first. If it is hot, do not open it because fire may be on the other side. Find another safe exit."
      },
      {
        "question": "What spreads fire quickly?",
        "options": ["Water", "Wind", "Sand", "Cloth"],
        "answerIndex": 1,
        "flashcardTip":
            "Wind makes fire spread faster by giving more oxygen. Stay away from open windy areas during fire."
      },
      {
        "question": "What should you avoid in fire?",
        "options": ["Stairs", "Exit", "Lift", "Alarm"],
        "answerIndex": 2,
        "flashcardTip":
            "Never use lifts during fire. They may stop working and trap you. Always use stairs to escape."
      },
      {
        "question": "What does a fire alarm do?",
        "options": ["Cool air", "Alert people", "Play music", "Light room"],
        "answerIndex": 3,
        "flashcardTip":
            "Fire alarms warn people about danger. When you hear it, leave immediately and go to a safe place."
      },
      {
        "question": "How to stop small kitchen fire?",
        "options": ["Paper", "Cloth cover", "Oil", "Water"],
        "answerIndex": 1,
        "flashcardTip":
            "Cover the fire with a lid or cloth to cut oxygen. Never use water on oil fires as it spreads flames."
      },
      {
        "question": "Smoke can cause?",
        "options": ["Energy", "Breathing problem", "Sleep", "Happiness"],
        "answerIndex": 1,
        "flashcardTip":
            "Smoke contains harmful gases and can cause breathing problems or fainting. Always move to fresh air quickly."
      },
      {
        "question": "Safe place after fire?",
        "options": ["Inside", "Open ground", "Basement", "Lift"],
        "answerIndex": 1,
        "flashcardTip":
            "Go to an open safe area after escaping. Stay there and do not go back inside."
      },
      {
        "question": "What to do during gas leak?",
        "options": ["Switch on light", "Turn off gas", "Use fire", "Run AC"],
        "answerIndex": 1,
        "flashcardTip":
            "Turn off gas supply and avoid using switches or flames. Leave the area and inform others."
      },
      {
        "question": "Fire needs what to burn?",
        "options": ["Water", "Heat fuel oxygen", "Air only", "Nothing"],
        "answerIndex": 1,
        "flashcardTip":
            "Fire needs heat, fuel, and oxygen. Removing one of these will stop the fire."
      },
      {
        "question": "Why use wet cloth?",
        "options": ["Play", "Breathe safely", "Sleep", "Clean"],
        "answerIndex": 1,
        "flashcardTip":
            "Wet cloth helps filter smoke and makes breathing easier during fire escape."
      },
      {
        "question": "Which item is risky?",
        "options": ["Books", "Fuel", "Shoes", "Toys"],
        "answerIndex": 1,
        "flashcardTip":
            "Fuel is highly flammable. Store it safely away from heat and fire sources."
      },
      {
        "question": "Why practice fire drills?",
        "options": ["Fun", "Safety practice", "Sleep", "Time pass"],
        "answerIndex": 1,
        "flashcardTip":
            "Fire drills help you learn how to act in emergencies. They make you prepared and confident."
      },
      {
        "question": "What to do when alarm rings?",
        "options": ["Ignore", "Hide", "Go outside", "Sleep"],
        "answerIndex": 2,
        "flashcardTip":
            "Leave immediately when alarm rings. Stay calm, do not push, and follow exit routes."
      },
      {
        "question": "Who helps in fire emergency?",
        "options": ["Friends", "Firefighters", "Drivers", "Shopkeepers"],
        "answerIndex": 1,
        "flashcardTip":
            "Firefighters are trained to control fire and rescue people. Always follow their instructions."
      }
    ];
    return {
      "level": i + 1,
      "questions": [questions[i]]
    };
  }),

  // 🌍 EARTHQUAKE
  "Earthquake": List.generate(20, (i) {
    final questions = [
      {
        "question": "What should you do during an earthquake?",
        "options": ["Run outside", "Jump", "Drop Cover Hold", "Hide in lift"],
        "answerIndex": 2,
        "flashcardTip":
            "Follow 'Drop, Cover, and Hold'. Drop to the ground, take cover under strong furniture, and hold it tightly. This protects you from falling objects and injuries."
      },
      {
        "question": "Where is the safest place inside a building?",
        "options": ["Near window", "Under sturdy table", "Balcony", "Lift"],
        "answerIndex": 1,
        "flashcardTip":
            "Sit under a strong table or desk. It protects you from falling items like fans, glass, and ceiling parts."
      },
      {
        "question": "What should you avoid during earthquake?",
        "options": [
          "Covering head",
          "Running outside",
          "Staying low",
          "Holding table"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "Do not run outside during shaking. Falling objects and debris can hurt you. Stay inside and protect yourself first."
      },
      {
        "question": "If you are outside, what should you do?",
        "options": [
          "Stand near building",
          "Go to open area",
          "Run into house",
          "Stand under tree"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "Move to an open area away from buildings, trees, and poles. Stay there until shaking stops."
      },
      {
        "question": "What should you protect during earthquake?",
        "options": ["Feet", "Hands", "Head and neck", "Hair"],
        "answerIndex": 2,
        "flashcardTip":
            "Protect your head and neck using your arms or a pillow. These parts are most vulnerable to injury."
      },
      {
        "question": "What should you do if in bed?",
        "options": [
          "Run outside",
          "Stay and cover head",
          "Jump",
          "Hide under bed"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "Stay in bed and cover your head with a pillow. Do not run, as objects may fall and injure you."
      },
      {
        "question": "What should you avoid using?",
        "options": ["Stairs", "Lift", "Door", "Table"],
        "answerIndex": 1,
        "flashcardTip":
            "Never use lifts during an earthquake. Power may fail and you could get trapped."
      },
      {
        "question": "After earthquake, what should you check?",
        "options": ["Clothes", "Mobile", "Injuries and damage", "TV"],
        "answerIndex": 2,
        "flashcardTip":
            "Check yourself and others for injuries. Look for damage like gas leaks or broken wires."
      },
      {
        "question": "What can fall during earthquake?",
        "options": ["Air", "Furniture", "Water", "Ground"],
        "answerIndex": 1,
        "flashcardTip":
            "Heavy furniture, fans, and shelves can fall. Stay away from them and take cover."
      },
      {
        "question": "What should you do near windows?",
        "options": ["Stand close", "Break glass", "Stay away", "Open them"],
        "answerIndex": 2,
        "flashcardTip":
            "Glass can break and cause injuries. Always stay away from windows during shaking."
      },
      {
        "question": "What should you do after shaking stops?",
        "options": ["Run blindly", "Check safety", "Sleep", "Ignore"],
        "answerIndex": 1,
        "flashcardTip":
            "After shaking stops, move carefully and check for safety hazards before leaving."
      },
      {
        "question": "What is aftershock?",
        "options": ["Heavy rain", "Small shaking", "Fire", "Wind"],
        "answerIndex": 1,
        "flashcardTip":
            "Aftershocks are smaller earthquakes that follow the main one. Stay alert and ready."
      },
      {
        "question": "Where should you not stand outside?",
        "options": [
          "Open ground",
          "Near buildings",
          "Empty field",
          "Playground"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "Stay away from buildings because parts can fall and cause injury."
      },
      {
        "question": "What should you do if trapped?",
        "options": ["Shout loudly", "Stay calm and tap", "Run", "Sleep"],
        "answerIndex": 1,
        "flashcardTip":
            "Stay calm and make noise by tapping objects. This helps rescuers find you."
      },
      {
        "question": "What should you keep ready?",
        "options": ["Toys", "Emergency kit", "Games", "Books"],
        "answerIndex": 1,
        "flashcardTip":
            "Keep an emergency kit with water, food, torch, and first aid ready at home."
      },
      {
        "question": "What should you do in school?",
        "options": ["Run", "Follow teacher", "Hide alone", "Jump"],
        "answerIndex": 1,
        "flashcardTip":
            "Always listen to your teacher. Follow safety instructions and stay calm."
      },
      {
        "question": "What should you do near electricity?",
        "options": ["Touch wires", "Stay away", "Play", "Cut randomly"],
        "answerIndex": 1,
        "flashcardTip":
            "Stay away from damaged wires. They can cause electric shock."
      },
      {
        "question": "What should you do with gas supply?",
        "options": ["Turn off", "Turn on", "Ignore", "Break pipe"],
        "answerIndex": 0,
        "flashcardTip":
            "Turn off gas supply after earthquake to prevent fire or explosion."
      },
      {
        "question": "Why stay calm?",
        "options": ["For fun", "To think clearly", "To sleep", "To ignore"],
        "answerIndex": 1,
        "flashcardTip":
            "Staying calm helps you think properly and make safe decisions."
      },
      {
        "question": "Who helps after earthquake?",
        "options": ["Friends", "Rescue teams", "Drivers", "Shopkeepers"],
        "answerIndex": 1,
        "flashcardTip":
            "Rescue teams and emergency services help people during disasters. Follow their instructions."
      }
    ];
    return {
      "level": i + 1,
      "questions": [questions[i]]
    };
  }),

  // 🌊 FLOOD
  "Flood": List.generate(20, (i) {
    final questions = [
      {
        "question": "What should you do when flood warning is given?",
        "options": ["Ignore", "Prepare and move", "Sleep", "Play outside"],
        "answerIndex": 1,
        "flashcardTip":
            "When you hear a flood warning, prepare immediately. Pack essentials like food, water, medicines, and documents. Move to a safe higher place."
      },
      {
        "question": "Where should you go during flood?",
        "options": ["Basement", "Low area", "Higher ground", "Drain"],
        "answerIndex": 2,
        "flashcardTip":
            "Always move to higher ground during floods. Water flows to low areas and can rise quickly, causing danger."
      },
      {
        "question": "What should you avoid walking through?",
        "options": ["Clean road", "Flood water", "Dry land", "Bridge"],
        "answerIndex": 1,
        "flashcardTip":
            "Never walk through flood water. It may be deep, fast-moving, and contain dangerous objects or open drains."
      },
      {
        "question": "Why is flood water dangerous?",
        "options": [
          "It is clean",
          "It is cold",
          "It may have germs",
          "It is fun"
        ],
        "answerIndex": 2,
        "flashcardTip":
            "Flood water may contain germs, chemicals, and dirt. It can cause diseases and infections."
      },
      {
        "question": "What should you switch off during flood?",
        "options": ["Fan", "Gas and electricity", "TV only", "Lights only"],
        "answerIndex": 1,
        "flashcardTip":
            "Turn off electricity and gas to prevent electric shock and fire accidents during floods."
      },
      {
        "question": "What should you carry in emergency?",
        "options": ["Toys", "Emergency kit", "Games", "Shoes"],
        "answerIndex": 1,
        "flashcardTip":
            "Keep an emergency kit with water, food, torch, batteries, and first aid. It helps you stay safe during floods."
      },
      {
        "question": "What should you do if trapped in water?",
        "options": [
          "Panic",
          "Stay calm and call for help",
          "Run fast",
          "Sleep"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "Stay calm and try to reach a safe place. Call for help or signal others. Do not panic."
      },
      {
        "question": "What should you avoid driving through?",
        "options": ["Road", "Flood water", "Bridge", "Highway"],
        "answerIndex": 1,
        "flashcardTip":
            "Never drive through flooded roads. Water can be deeper than it looks and can carry vehicles away."
      },
      {
        "question": "What should you drink during flood?",
        "options": [
          "Flood water",
          "Dirty water",
          "Clean safe water",
          "River water"
        ],
        "answerIndex": 2,
        "flashcardTip":
            "Drink only clean and safe water. Flood water may be contaminated and cause illness."
      },
      {
        "question": "What should you listen to during flood?",
        "options": ["Music", "Rumors", "Official warnings", "Games"],
        "answerIndex": 2,
        "flashcardTip":
            "Listen to official announcements from authorities. They give correct safety instructions."
      },
      {
        "question": "What should you do with important documents?",
        "options": ["Throw", "Keep safe and dry", "Ignore", "Burn"],
        "answerIndex": 1,
        "flashcardTip":
            "Keep documents like ID, certificates in waterproof bags to protect them from water damage."
      },
      {
        "question": "What should you avoid touching?",
        "options": ["Water", "Electric wires", "Food", "Clothes"],
        "answerIndex": 1,
        "flashcardTip":
            "Avoid touching electric wires in water. They can cause serious electric shock."
      },
      {
        "question": "What should you do after flood?",
        "options": [
          "Enter immediately",
          "Check safety first",
          "Run fast",
          "Ignore damage"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "After flood, check your surroundings for safety. Look for damage, broken wires, and unsafe structures."
      },
      {
        "question": "Where should you not go during flood?",
        "options": ["High ground", "Shelter", "Low areas", "Safe place"],
        "answerIndex": 2,
        "flashcardTip":
            "Avoid low areas because water collects there quickly and can trap you."
      },
      {
        "question": "What helps you see in dark flood conditions?",
        "options": ["Phone only", "Torch", "Book", "Clothes"],
        "answerIndex": 1,
        "flashcardTip":
            "Carry a torch or flashlight. It helps you see clearly in dark or power-cut situations."
      },
      {
        "question": "What should you do with food?",
        "options": [
          "Eat spoiled food",
          "Eat clean food",
          "Ignore",
          "Throw all"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "Eat only clean and safe food. Flood water may spoil food and make it unsafe."
      },
      {
        "question": "What should children do during flood?",
        "options": [
          "Play in water",
          "Stay with elders",
          "Run alone",
          "Swim outside"
        ],
        "answerIndex": 1,
        "flashcardTip":
            "Always stay with parents or elders. Do not go alone near water."
      },
      {
        "question": "What should you do if water rises fast?",
        "options": ["Stay", "Move to higher place", "Sleep", "Ignore"],
        "answerIndex": 1,
        "flashcardTip":
            "Move quickly to higher ground if water level rises. Do not wait."
      },
      {
        "question": "Why avoid flood water?",
        "options": [
          "It is fun",
          "It is clean",
          "It is dangerous",
          "It is cold"
        ],
        "answerIndex": 2,
        "flashcardTip":
            "Flood water can be deep, fast, and dirty. It can carry harmful things and cause injury."
      },
      {
        "question": "Who helps during flood?",
        "options": ["Friends", "Rescue teams", "Drivers", "Shopkeepers"],
        "answerIndex": 1,
        "flashcardTip":
            "Rescue teams and emergency services help people during floods. Follow their instructions for safety."
      }
    ];
    return {
      "level": i + 1,
      "questions": [questions[i]]
    };
  }),
};

const String kLongDescription =
"We're describing a game project.\nThis description is a bit longer and will key you in the main points, which are:";

const List<String> kBulletPoints = [
  "This is the 1st important thing",
  "2nd",
  "this is the 3r but longer dlkjfhgalje klhfl lUWERF . lahf eldHQ W EÑHF N QÑOIWhrñ Q Qf ,-ñhq dc-HIW WFQWIO JHFKCSN-hwa riq2w i-",
];
const String kCopyright = "© 2025 Isabel de Vergara";


//////////////////////////
// ABOUT ME - HOME PAGE //
//////////////////////////

const String kAboutMiniHeader = "Hi! I'm Isabel, a C++ Developer and Game Programmer";
const String kAboutMini = "I am currently working as a C++ programmer and DevOps Engineer.";
const String kAboutText = "I'm a computer science graduate with a strong passion for game programming. While completing my master’s degree in game programming, I worked as a frontend developer, and I’m currently working as a C++ developer and DevOps engineer. I’ve built this portfolio website myself, and over the years, I’ve developed games using Unreal Engine, Unity, and native C++.\nBeyond gameplay, I’m deeply interested in systems-level programming, and I’m currently developing a personal, tools-focused project—a custom game engine. I enjoy exploring emerging technologies like VR and have worked on related projects, alongside AI and UI systems for games. I really enjoy combining creativity with technical problem-solving to build experiences that are fun, responsive, and challenging.";

/////////////////////////////
// HIGHLIGHTED - HOME PAGE //
/////////////////////////////

const String kHighlighted1 = "I’m currently developing my own game engine with the goal of creating a complete game that incorporates core features common to most games. Here's a brief overview of what’s been accomplished so far:\n\nCompleted Features:";

const List<String> kBPAccomplished = [
  "Entities & Components System",
  "3D Graphics with OpenGL"
  "Reflection System",
  "Simple Physics",
  "Player Controller",
  "2D Graphics with OpenGL",
  "Debugging Tools",
  "Built with CMake",
  "Mini-Game",
]; 

const String kUpcoming = "Upcoming Features";

const List<String> kBPUpcoming = [
  "Enhanced Physics",
  "Basic AI systems",
  "Animation and transformation sequences",
  "New mini-game to showcase the most recent features"
];


//////////////////////////
// PROJECTS - HOME PAGE //
//////////////////////////

const String kEOLShortDesc =
"Third Person Shooter game set in a dynamic, ever-rotating world that transforms in game time.\n\nMy contributions:";
const List<String> kBPEOL = [
  "AI, including custom movement, BTs and a EQS",
  "UI programming",
  "Team Management of a 18 people team, including artists, designers and programmers",
];

const String kNTRShortDesc =
"First Person Horror game for Android VR created as a solo project for University.\n\nKey Aspects:";
const List<String> kBPNTR = [
  "Game Mechanics and Design",
  "Gameplay Programming, AI, UI",
  "Android VR development",
];

const String kSMUShortDesc =
"Oculus VR Multiplayer Minigame aimed at neurodivergent children during Covid.\n\nMy contributions:";
const List<String> kBPSMU = [
  "Online Programming using Photon",
  "Gameplay and UI Programming",
  "Oculus VR development",
];

const String kEngineShortDesc =
"Small C++ game engine, this is still a work in progress.\n\nKey Aspects (already implemented):";
const List<String> kBPEngine = [
  "Game Editor and showcase mini-game"
  "2D and 3D Graphics with OpenGL",
  "Reflection system for deserialization/serialization",
  "Collisions and Physics",
];

const String kFlockShortDesc =
"Mini-game exploring flocking behavior.\n\nKey Aspects:";
const List<String> kBPFlock = [
  "C++ and Unreal Engine",
  "AI Flocking behavior",
  "Simple Gameplay",
];

const String kCJShortDesc =
"2D Tower Defense game created for a Game Jam.\n\nMy contributions:";
const List<String> kBPCJ = [
  "UI programming",
  "Gameplay programming",
];



///////////////////////////
// PROJECT - END OF LIFE //
///////////////////////////

const String awardEOL = "PLAY STATION TALENTS FINALIST 2023\nCATEGORY: BEST DESIGN\n\nCheck the entry in the Play Station Talents website:";

const String kDesc1EOL = "End of Life is a third-person action shooter created as the final project for my master’s in game programming. Developed over several months using Unreal Engine 5 and C++, the game was a multidisciplinary collaboration involving artists, designers, and programmers. As Lead AI Programmer, UI Programmer and Producer, I was responsible for major technical systems and project coordination across the team.\n\nIn End of Life, players step into the role of Nashla, a demi-goddess fighting to restore her fading power. The game’s world is its standout feature: a rotating, fragmented environment inspired by a Rubik’s Cube, where gravity changes dynamically based on orientation. Nashla must traverse this ever-shifting terrain using her weapons — lethal magical needles — and her divine powers, including time manipulation and world rotation.";
const String kDesc1_5EOL = "The game blends fast-paced shooting mechanics with spatial puzzle-solving, set in a mystic, surreal landscape. Read more about it on the video game news site Vandal:\n";

const String kDesc2EOL = "Designing the AI to work within such a complex, non-Euclidean environment posed unique challenges.\nMy main responsibilities included:\nEnvironment Query System (EQS): Developed a system to dynamically evaluate the environment and inform NPC tactical decisions. The algorithm scanned points across a grid and scored them based on several contextual factors — including the player’s position, the NPC’s current location, and the positions of other nearby enemies. These evaluations were used to classify potential destinations and determine optimal positioning for flanking or regrouping behavior.\nMovement and Path Following: I developed the NPC movement and path-following logic for our team’s custom navmesh system, enabling characters to navigate a world with rotating geometry and variable gravity directions. Enemies could also dynamically use a hook mechanic, similar to the player’s, to jump between platforms and traverse vertical spaces, allowing for fast repositioning and more dynamic encounters.\nBehavior Trees & State Machines: Used Unreal Engine’s built-in AI tools to design and implement flexible Behavior Trees, combining high-level strategies with reactive, moment-to-moment decision-making. I integrated our custom systems — including the navmesh, path-following, and Environment Query System (EQS) — into Unreal’s AI framework. Core strategy values such as proximity thresholds, separation distances, and reach radii were exposed to the editor, giving designers direct control over AI behavior tuning.\nOptimization & Profiling: Analyzed performance bottlenecks related to AI perception and navigation, implementing profiling tools and improving CPU usage under load.";
const String kDesc3EOL = "I developed the game’s UI entirely in C++, leveraging Unreal’s built-in UI classes, widgets, and delegate system for dynamic interaction. My work included implementing the HUD — with animated elements like the health bar and player feedback — as well as designing and coding menus for the main interface, pause screens, and transitions. The UI was built to be responsive and clean, with behavior tightly integrated into the game’s underlying systems.";

const String kDesc4EOL = "As Producer, I led and coordinated a 19-person multidisciplinary team, managing tasks across programming, design, and art. Using a Kanban workflow in Jira, I handled task planning, prioritization, and deadline tracking, ensuring smooth progression and timely deliveries. My responsibilities included facilitating team communication, supporting key project decisions, and continuously adjusting scope and priorities based on progress and feedback. I worked to align technical and creative goals, keeping the team focused and the project cohesive.";


//////////////////////////////
// PROJECT - NOWHERE TO RUN //
//////////////////////////////

const String kDescNTR1 = "Developed as a final bachelor’s project (TFG) at a Spanish university, this solo project was created in Unity for Android mobile VR with controller support. The game is a first-person horror experience where the player must explore a dark, zombie-infested house and find three keys to escape.\nThe project received a perfect score (10/10) for its technical and design execution.";

const List<List<String>> kDescNTR2 = [
  ["VR Implementation: ", "Android VR integration with controller input and head tracking"],
  ["Game Design: ", "Level layout, objective structure, pacing, and horror atmosphere"],
  ["AI Programming: ", "Simple enemy AI for zombie detection, chasing, spawning and attacking"],
  ["Gameplay Programming: ","Player movement, item collection, world interaction and animations programming"],
  ["UI Design & Programming: ","Menus and In-world and overlay UI for objectives and player feedback"],
  ["Audio: ","Ambient sound, music cues, and SFX for horror immersion"],
  ["Performance Optimization: ","Ensured stable performance on mobile VR hardware"],
];


//////////////////////////////
// PROJECT - SOCIAL MATCHUP //
//////////////////////////////

const String kDescSMU1 = "Developed as part of a User Experience (UX) course at Politecnico di Milano, this VR game was created for Oculus headsets using Unity and Photon for online multiplayer functionality.\n\nIt was a collaborative project developed in partnership with a designer, who was responsible for the game's visual design and artistic direction, while I focused on the technical implementation.\nThe game is intended for neurodivergent children and their parents, teachers, or therapists, offering a cooperative minigame where two children communicate to describe and match emojis representing emotions. An optional adult participant can join as a passive observer and offer guidance via voice chat.";

const List<List<String>> kDescSMU2 = [
  ["VR Implementation: ","Full Oculus VR integration including hand/controller input and headset tracking"],
  ["Multiplayer Networking: ","Full Oculus VR integration including hand/controller input and headset tracking."],
  ["UI & Feedback Systems: ","Created intuitive, VR-optimized UI and feedback for emoji selection, voice activity, and session state"],
  ["Session Management: ","Created intuitive, VR-optimized UI and feedback for emoji selection, voice activity, and session state"],
  ["Prototyping & Iteration: ","Developed and tested gameplay through multiple UX-centered iterations to ensure clarity and comfort in VR"],
];


////////////////////////
// PROJECT - FLOCKING //
////////////////////////

const String kDescFlock1 = "This solo project was developed in Unreal Engine 5 as a personal exploration of flocking algorithms in a real-time 3D environment. The game is a simple first-person shooter where the player must shoot birds flying around tall buildings. The primary focus was on simulating realistic group movement and behavior among AI agents in a dynamic urban space.";

const String kDescFlock2 = "The birds’ movement is driven by a classic flocking behavior system, combining the three core principles of cohesion, alignment, and separation. Cohesion encourages birds to steer toward the center of nearby flockmates, alignment synchronizes their velocity with neighbors, and separation ensures they avoid overcrowding by maintaining personal space. These forces are calculated per frame and weighted to produce smooth, lifelike movement as the flock navigates around obstacles and adjusts to the environment in real time.";

const String kDescFlock3 = "In addition to the AI system, the project includes basic player controls, a first-person shooter setup, and a minimal UI for feedback and game state. While simple in scope, the project was a valuable testbed for working with autonomous agents and reactive group behavior in a 3D space.";


///////////////////////////
// PROJECT - COFRADE JAM //
///////////////////////////

const String kDescCofr1 = 'Created during a game jam by a small team of 2 programmers, designers, and artists, this game is a 2D, pixel-art tower defense inspired by Spain’s Semana Santa (Holy Week) traditions. Players must purchase and position "Nazarenos" — hooded religious figures — to navigate ceremonial routes and complete the level, blending strategy with cultural references in a lighthearted, stylized setting.';

const List<List<String>> kDescCofr2 = [
  ["UI: ", "Designed and implemented all user interface elements, including menus, shop, and in-game HUD"],
  ["Shop & Inventory Systems: ", "Programmed the shop logic, money economy, and inventory handling, with systems built to allow designers to tweak values like resource costs and NPC attributes directly from the Unity editor"],
  ["Gameplay & Integration: ", "Contributed to general gameplay features such as audio integration, trigger-based map interactions, and level construction, as well as implementing pause, run, restart, and timer systems to manage session flow and pacing."]
];


//////////////////////
// PROJECT - ENGINE //
//////////////////////

const String kDescEng1 = "This is a solo game engine project developed in C++ using CMake, with the long-term goal of building a complete game entirely on top of this custom engine. The engine is designed to support both 2D and 3D games, and aims to balance performance, modularity, and usability — with editor tools and data-driven workflows to make development smoother.\n\nIt is a work in progress and continues to grow as features are added.";

const String kEngGraphics = "Built with OpenGL, the engine supports both 2D and 3D rendering. It includes lighting shaders (ambient, diffuse, specular), material support (color or texture-based), and a system for adding custom shaders like a neon-glow effect. Entity transformations support world and relative positioning. Models are loaded via Assimp (.obj), with full texture support.";

const String kEngECS = "A flexible ECS framework allows defining game logic through components attached to entities. Entities are centrally managed and dynamically created or modified during runtime or scene loading.";

const String kEngUI = "Custom-built UI framework featuring a hierarchical widget system. Widgets (such as images, buttons, text, dropdowns, and input boxes) support 2D layout, relative positioning, text alignment, and font loading (.ttf). UI elements can be nested and styled, enabling interactive menus and HUDs.";

const String kEngRefl = "The engine features a custom reflection system to parse scene definitions from YAML files, instantiating all entities and components at runtime. A built-in Editor Mode (toggle with F1) provides:";

const String kEngPhysics = "Includes collision detection for basic shapes (planes, cubes, spheres, capsules, slopes) and a movement component supporting velocity, acceleration, and physics reactions like gravity, friction, and bounciness.";

const String kEngPlayer = "A configurable first-person player controller supports camera movement and player navigation. Input is fully customizable for gameplay interactions.";

const String kEngDebug = "Debugging tools include 2D and 3D overlays for visualizing entities, components, and physics interactions. The engine supports real-time debugging and profiling.";

const String kEngDelivery = "The engine is built with CMake with a focus on modularity and extensibility.";

const List<String> kEngUpcoming = [
  "Improved illumination and shadows", 
  "Basic AI using Behavior Trees", 
  "Memory Management and Partitioning",
  "A full playable game showcasing all systems"
];


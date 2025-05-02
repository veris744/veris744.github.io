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
const String kAboutMini = "I am currently working as a C++ programmer and DevOps Engineer in France.";
const String kAboutText = "I'm a computer science graduate with a strong passion for game programming. While completing my master’s degree in game programming, I worked as a frontend developer, and I’m currently working as a C++ developer and DevOps engineer. I’ve built this portfolio website myself, and over the years, I’ve developed games using Unreal Engine, Unity, and native C++.\nBeyond gameplay, I’m deeply interested in systems-level programming, and I’m currently developing a personal, tools-focused project—a custom game engine. I enjoy exploring emerging technologies like VR and have worked on related projects, alongside AI and UI systems for games. I really enjoy combining creativity with technical problem-solving to build experiences that are fun, responsive, and challenging.";

/////////////////////////////
// HIGHLIGHTED - HOME PAGE //
/////////////////////////////

const String kHighlighted1 = "I’m currently developing my own game engine with the goal of creating a complete game that incorporates core features common to most games. Here's a brief overview of what’s been accomplished so far:\n\nCompleted Features:";

const List<String> kBPAccomplished = [
  "Entities & Components System: A flexible architecture for managing game entities and their components, along with an asset manager for loading/unloading scenes and assets.",
  "3D Graphics with OpenGL: World and relative transformations on entities, lighting, and rendering of 3D graphics.",
  "Reflection System: Used for reading and writing YAML scene data, and editing entity components through an editor.",
  "Reflection System: Used for reading and writing YAML scene data, and editing entity components through an editor.",
  "Simple Physics: Gravity and basic collision reactions.",
  "Player Controller: Free camera mode for the editor and in-game movement, along with an input manager for player interactions.",
  "2D Graphics with OpenGL: Text rendering and UI elements for in-game and editor interfaces.",
  "Debugging Tools: Options for both 2D and 3D debugging.",
  "Built with CMake: Engine infrastructure set up for cross-platform development.",
  "Mini-Game: A prototype showcasing core features such as graphics, UI, collisions, and user input."
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
  "Team Management of a 19 people team, including artists, designers and programmers",
];

const String kNTRShortDesc =
"First Person Horror game for Android VR created as a solo project for University.\n\nKey Aspects:";
const List<String> kBPNTR = [
  "Game Mechanics and Design",
  "Gameplay Programming, AI, UI",
  "Android VR development",
];

const String kSMUShortDesc =
"Oculus VR Multiplayer Minigame aimed at neurodivergent children during Covid.\n\nContributions:";
const List<String> kBPSMU = [
  "Online Programming using Photon",
  "Gameplay and UI Programming",
  "Oculus VR development",
];

const String kEngineShortDesc =
"Small C++ game engine, this is still a work in progress.\n\nKey Aspects (already implemented):";
const List<String> kBPEngine = [
  "Game Editor and showcase mini-game"
  "Graphics with OpenGL",
  "Reflection system for deserialization/serialization",
  "User Interface",
  "Collisions and Physics",
  "Built with CMake"
];

const String kFlockShortDesc =
"Mini-game exploring flocking behavior.\n\nKey Aspects:";
const List<String> kBPFlock = [
  "C++ and Unreal Engine",
  "AI Flocking behavior",
  "Simple Gameplay",
];

const String kCJShortDesc =
"2D Tower Defense game created for a Game Jam.\n\nContributions:";
const List<String> kBPCJ = [
  "UI programming",
  "Gameplay programming",
];



///////////////////////////
// PROJECT - END OF LIFE //
///////////////////////////

const String awardEOL = "PLAY STATION TALENTS FINALIST 2023\nBEST DESIGN";

const String kDesc1EOL = "End of Life is a third-person action shooter created as the final project for my master’s in game programming. Developed over several months using Unreal Engine 5 and C++, the game was a multidisciplinary collaboration involving artists, designers, and programmers. As Lead AI Programmer and Producer, I was responsible for major technical systems and project coordination across the team.\n\nIn End of Life, players step into the role of Nashla, a demi-goddess fighting to restore her fading power. The game’s world is its standout feature: a rotating, fragmented environment inspired by a Rubik’s Cube, where gravity changes dynamically based on orientation. Nashla must traverse this ever-shifting terrain using her weapons — lethal magical needles — and her divine powers, including time manipulation and world rotation.\n\nThe game blends fast-paced shooting mechanics with spatial puzzle-solving, set in a mystic, surreal landscape.\n";

const String kDesc2EOL = "Designing the AI to work within such a complex, non-Euclidean environment posed unique challenges. My main responsibilities included:\nEnvironment Query System (EQS): Built a system to dynamically evaluate NPC surroundings — including player behavior, environmental cover, and other enemies — to drive decision-making and tactical positioning.\nMovement and Path Following: I developed the NPC movement and path-following logic for our custom navmest, allowing characters to navigate seamlessly in a world with multiple gravity directions and rotating geometry.\nBehavior Trees & State Machines: Used Unreal’s built-in AI tools to design and implement flexible Behavior Trees, combining high-level strategies with reactive behaviors.\nOptimization & Profiling: Analyzed performance bottlenecks related to AI perception and navigation, implementing profiling tools and improving CPU usage under load.";

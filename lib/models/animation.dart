class Animation {
  String name;
  String key;
  bool isChosen;

  Animation({required this.name, required this.key, required this.isChosen});
}

List<Animation> animationsData = [
  Animation(
      name: "Crouch Walk",
      key: "SK_Huggy|A_Huggy_CrouchWalk_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Crouch Walk Backwards",
      key: "SK_Huggy|A_Huggy_CrouchWalkBackwards_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Idle", key: "SK_Huggy|A_Huggy_Idle_SK_Huggy", isChosen: true),
  Animation(
      name: "Jump", key: "SK_Huggy|A_Huggy_Jump_SK_Huggy", isChosen: false),
  Animation(
      name: "Mini Alert",
      key: "SK_Huggy|A_Huggy_MiniAlert_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Mini Idle",
      key: "SK_Huggy|A_Huggy_MiniIdle_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Roar", key: "SK_Huggy|A_Huggy_Roar_SK_Huggy", isChosen: false),
  Animation(
      name: "Mini Turn",
      key: "SK_Huggy|A_Huggy_MiniTurn_SK_Huggy",
      isChosen: false),
  Animation(name: "Run", key: "SK_Huggy|A_Huggy_Run_SK_Huggy", isChosen: false),
  Animation(
      name: "Select Screen_Idle",
      key: "SK_Huggy|A_Huggy_SelectScreenIdle_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Select Screen_Intro",
      key: "SK_Huggy|A_Huggy_SelectScreenIntro_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Sit Idle",
      key: "SK_Huggy|A_Huggy_SitIdle_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Sit Transition",
      key: "SK_Huggy|A_Huggy_SitTransition_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Turn Leg Down",
      key: "SK_Huggy|A_Huggy_TurnLegDown_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Turn Leg Lift",
      key: "SK_Huggy|A_Huggy_TurnLegLift_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Walk", key: "SK_Huggy|A_Huggy_Walk_SK_Huggy", isChosen: false),
  Animation(
      name: "Walk Backwards",
      key: "SK_Huggy|A_Huggy_WalkBackwards_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Walk Backwards No Stride",
      key: "SK_Huggy|A_Huggy_WalkBackwardsNoStride_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Walk No Stride",
      key: "SK_Huggy|A_Huggy_WalkNoStride_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Sewer Huggy Idle",
      key: "SK_Huggy|A_SewerHuggy_Idle_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Sewer Huggy Jumpscare",
      key: "SK_Huggy|A_SewerHuggy_Jumpscare_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Pipe Crawl",
      key: "SK_Huggy|A_SewerHuggy_PipeCrawl_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Punch",
      key: "SK_Huggy|A_SewerHuggy_Punch_SK_Huggy",
      isChosen: false),
  Animation(
      name: "Jumpscare",
      key: "SK_Huggy|A_Huggy_Jumpscare_SK_Huggy",
      isChosen: false),
];

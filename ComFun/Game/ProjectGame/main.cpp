#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>
#include <stdio.h>
#include <sstream>
#include <iostream>
#include <fstream>
#include <algorithm>
#include <windows.h>
#include <time.h>
#include <Vector>

using namespace std;
using namespace sf;
bool sortinrev(const pair<int, string>& a, const pair<int, string>& b)
{
return(a.first>b.first);
}
int distance(int x1, int x2, int y1, int y2)
{
	int d;
	d = sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2));
	return d;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////
void animation(sf::Texture* texture, sf::RectangleShape* character, int *imageCount, int maxCount, int width, int height, unsigned long millis, unsigned long*time, unsigned long delay)
{
	character->setTexture(texture);
	character->setTextureRect(sf::IntRect(*imageCount, 0, width, height));
	if (millis-*time>= delay)
	{
		*time = millis;
		if (*imageCount >= maxCount)
		{
			*imageCount = 0;
		}
		*imageCount = *imageCount +abs(width);
		character->setTextureRect(sf::IntRect(*imageCount, 0, width, height));
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////
void animationstate(sf::Texture* texture, sf::RectangleShape* character, int *imageCount, int maxCount, int width, int height,int *state, unsigned long millis, unsigned long*time, unsigned long delay)
{
	character->setTexture(texture);
	character->setTextureRect(sf::IntRect(*imageCount, 0, width, height));
	if (millis-*time >= delay)
	{
		*time = millis;
		if (*imageCount >= maxCount)
		{
			*imageCount = 0;
			*state = 0;
		}
		*imageCount = *imageCount + abs(width);
		character->setTextureRect(sf::IntRect(*imageCount, 0, width, height));
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////
void animationstate2(sf::Texture* texture, sf::RectangleShape* character, int* imageCount, int maxCount, int width, int height, int* state, int* state2,unsigned long millis, unsigned long* time, unsigned long delay)
{
	character->setTexture(texture);
	character->setTextureRect(sf::IntRect(*imageCount, 0, width, height));
	if (millis - *time >= delay)
	{
		*time = millis;
		if (*imageCount >= maxCount)
		{
			*imageCount = 0;
			*state = 0;
			*state2 = 1;
		}
		*imageCount = *imageCount + abs(width);
		character->setTextureRect(sf::IntRect(*imageCount, 0, width, height));
	}
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
void jump(int* isJumping, int* y, int ground, int jumpheight, int gravitySpeed, int moveSpeed,int *stateJump)
{
	if (*isJumping == 1)
	{
		*y -= moveSpeed;
	}
	if (*y <= ground - jumpheight)
	{
		*isJumping = 0;
	}
	if (*y < ground && *isJumping == 0)
	{
		*y += gravitySpeed;
	}	
	if (*y >= ground&& *isJumping == 0)
	{
		*stateJump = 0;
		*y = ground;
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void makeObject(sf::Texture* texture, sf::RectangleShape* object, int xSize, int ySize, int xOrigin, int yOrigin)
{
	object->setSize(sf::Vector2f(xSize, ySize));
	object->setTexture(texture);
	object->setOrigin(xOrigin, yOrigin);
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int random(int min,int max)
{
	int r;
	r = min+rand() % max;
	return r;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int main()
{	
	vector<pair<int, string>>pairScoreName;
	sf::RenderWindow window(sf::VideoMode(1333, 768), "Ninninger", sf::Style::Close | sf::Style::Titlebar);
	window.setFramerateLimit(220);
	srand(time(NULL));

	sf::Image Icon;
	Icon.loadFromFile("icon-ninja.jpg");
	window.setIcon(512, 512, Icon.getPixelsPtr());

	sf::Font font;
	font.loadFromFile("resources/font/score.ttf");
/////////////////////////////////////////Menu///////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	bool MenuState = true;
	bool HowtoplayState = false;
	bool PlayState = false;
	bool ExitState = false;
	bool PauseState = false;
	bool GameOverState = false;
	bool WinState = false;
	bool ScoreState = false;
	bool NameState = false;

	sf::CircleShape Select(10);
	Select.setFillColor(sf::Color::White);

	sf::CircleShape Select2(10);
	Select2.setFillColor(sf::Color::White);

	sf::RectangleShape Menu1(sf::Vector2f(1333, 768));
	sf::Texture Menu1Texture;
	Menu1Texture.loadFromFile("resources/Menu/bg0.png");
	Menu1.setTexture(&Menu1Texture);

	sf::RectangleShape Menu2(sf::Vector2f(1333, 768));
	sf::Texture Menu2Texture;
	Menu2Texture.loadFromFile("resources/Menu/bg1.png");
	Menu2.setTexture(&Menu2Texture);

	sf::RectangleShape Menu3(sf::Vector2f(1333, 700));
	sf::Texture Menu3Texture;
	Menu3Texture.loadFromFile("resources/Menu/bg2.png");
	Menu3.setTexture(&Menu3Texture);

	sf::RectangleShape howtoplay(sf::Vector2f(1333, 768));
	sf::Texture howtoplayTexture;
	howtoplayTexture.loadFromFile("resources/Menu/howtoplay.png");
	howtoplay.setTexture(&howtoplayTexture);



	sf::Text PlayText;
	sf::Text HowtoplayText;
	sf::Text ExitText;
	sf::Text ResumeText;
	sf::Text MainMenuText;
	sf::Text ScoreBoardText;
	sf::Text GameoverText;
	sf::Text WinText;
	sf::Text EnterYourNameText;
	sf::Text YourScoreText;

	PlayText.setFont(font);
	HowtoplayText.setFont(font);
	ExitText.setFont(font);
	ResumeText.setFont(font);
	MainMenuText.setFont(font);
	ScoreBoardText.setFont(font);
	GameoverText.setFont(font);
	WinText.setFont(font);
	EnterYourNameText.setFont(font);
	YourScoreText.setFont(font);


	PlayText.setString("PLAY");
	HowtoplayText.setString("HOW TO PLAY");
	ExitText.setString("EXIT");
	ResumeText.setString("RESUME");
	MainMenuText.setString("MAIN MENU");
	ScoreBoardText.setString("SCORE");
	GameoverText.setString("GAME OVER");
	WinText.setString("YOU WIN");
	EnterYourNameText.setString("ENTER YOUR NAME");
	YourScoreText.setString("YOUR SCORE IS");

	GameoverText.setCharacterSize(150);
	WinText.setCharacterSize(150);
	EnterYourNameText.setCharacterSize(30);


	PlayText.setPosition(630, 200);
	ScoreBoardText.setPosition(615,300);
	HowtoplayText.setPosition(560, 400);

	GameoverText.setPosition(150,100);
	WinText.setPosition(300,100);
	
	ResumeText.setPosition(610, 200);
	MainMenuText.setPosition(580, 300);
	EnterYourNameText.setPosition(510,520);
	YourScoreText.setPosition(380,320);

	Select2.setOrigin(5,5);
	Select2.setPosition(1333/2,100);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	sf::RectangleShape object;
	object.setSize(sf::Vector2f(400.0f, 70.0f));
	object.setOrigin(sf::Vector2f(200.0f, 35.0f));
	object.setPosition(sf::Vector2f(666, 450.0f));

	sf::RectangleShape cursor;
	cursor.setSize(sf::Vector2f(5.0f, 64.0f));
	cursor.setOrigin(sf::Vector2f(2.5f, 32.0f));
	cursor.setPosition(sf::Vector2f(480, 450.0f));
	cursor.setFillColor(sf::Color::Black);

	float totalTime = 0;
	sf::Clock clock;
	bool state = false;

	char last_char = ' ';

	std::string playerName;

	sf::Text playerNametext;
	playerNametext.setFont(font);
	playerNametext.setCharacterSize(40);
	playerNametext.setFillColor(sf::Color::Black);
	playerNametext.setPosition(480, 425);
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	ifstream Ifile("HighscoreFile.txt");

	sf::Text highscoreNameText[5], highscoreScoreText[5], highscoreTitle;
	highscoreTitle.setFont(font);
	highscoreTitle.setCharacterSize(70);
	highscoreTitle.setString("HIGHSCORE");
	highscoreTitle.setOrigin(highscoreTitle.getGlobalBounds().width, highscoreTitle.getGlobalBounds().height);
	highscoreTitle.setFillColor(sf::Color::White);
	highscoreTitle.setPosition(200+1333 / 2, 50 + 768 / 20);
	

	string line;
	do
	{
		Ifile >> line;
		string highscoreScore = line.substr(0, line.find(','));
		string highscoreName = line.substr(line.find(',') + 1, line.length());
		pairScoreName.push_back(make_pair(atoi(highscoreScore.c_str()), highscoreName));
	} while (Ifile.good());//Read until EOF
	sort(pairScoreName.begin(), pairScoreName.end(), sortinrev);	
	Ifile.close();
	for (int i = 0; i < 5; i++)
	{
		highscoreNameText[i].setString(pairScoreName[i].second);
		highscoreScoreText[i].setString(to_string(pairScoreName[i].first));
	}
	for (int i = 0; i < 5; i++)
	{
		highscoreNameText[i].setFont(font);
		highscoreNameText[i].setFillColor(sf::Color::White);
		highscoreNameText[i].setCharacterSize(40);
		highscoreNameText[i].setPosition(sf::Vector2f(320, 100+100*(i + 1)));

		highscoreScoreText[i].setFont(font);
		highscoreScoreText[i].setFillColor(sf::Color::White);
		highscoreScoreText[i].setCharacterSize(40);
		highscoreScoreText[i].setPosition(sf::Vector2f(800, 100+100 * (i + 1)));
	}
//////////////////////////////////////////////////////////////////////////////////PlayGame//////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	sf::RectangleShape player(sf::Vector2f(144, 144));
	sf::RectangleShape playerattacksword(sf::Vector2f(192, 144));
	sf::RectangleShape background(sf::Vector2f(1333 * 10, 700));
	sf::RectangleShape background2(sf::Vector2f(1333 * 10, 750));
	sf::RectangleShape background3(sf::Vector2f(1333 * 10, 700));
	sf::RectangleShape ground(sf::Vector2f(1333 * 10, 290));
	sf::RectangleShape lava1(sf::Vector2f(1333, 150));
	sf::RectangleShape lava2(sf::Vector2f(1333, 150));
	sf::RectangleShape shoriken(sf::Vector2f(50, 50));
	sf::RectangleShape HP(sf::Vector2f(300, 30));
	sf::RectangleShape Hpblack(sf::Vector2f(300, 30));
	sf::RectangleShape HPbar(sf::Vector2f(390, 50));	
	sf::RectangleShape groundUp[20];	
	sf::RectangleShape bot[40];
	sf::RectangleShape bot2[10];
	sf::RectangleShape Magic[10];
	sf::RectangleShape thorn[30];
	sf::RectangleShape item[40];
	sf::RectangleShape Boss;
	sf::RectangleShape Boss2(sf::Vector2f(350, 350));
	sf::RectangleShape Gate;
	sf::RectangleShape Torch(sf::Vector2f(40, 80));

/////////////////////////////////////////////////////////////////////////////////////////Sound///////////////////////////////////////
	sf::Music music;
	sf::SoundBuffer attackSwordSoundBuffer;
	sf::SoundBuffer attackShorikenSoundBuffer;
	sf::SoundBuffer attackswordSoundCrashBuffer;
	sf::SoundBuffer attackShorikenSoundCrashBuffer;
	sf::SoundBuffer JumpSoundBuffer;
	sf::SoundBuffer playercrashBotSoundBuffer;
	sf::SoundBuffer SelectSoundBuffer;
	sf::SoundBuffer EnterSoundBuffer;
	sf::SoundBuffer walkSoundBuffer;
	sf::SoundBuffer thunderSoundBuffer;


	sf::Sound attackSwordSound;
	sf::Sound attackShorikenSound;
	sf::Sound attackswordSoundCrash;
	sf::Sound attackShorikenSoundCrash;
	sf::Sound JumpSound;
	sf::Sound playercrashBotSound;
	sf::Sound SelectSound;
	sf::Sound EnterSound;
	sf::Sound walkSound;
	sf::Sound thunderSound;

/////////////////////////////////////////////////////////////////////////////////////////////////////texture////////////////////////////////////////
	sf::Texture HPbarTexture;
	sf::Texture playerIdleTexture;
	sf::Texture playerRunTexture;
	sf::Texture playerJumpTexture;
	sf::Texture playerCruchTexture;
	sf::Texture playerCruch2Texture;
	sf::Texture playerAttackTexture;
	sf::Texture playerAttack2Texture;
	sf::Texture playerRunAttackTexture;
	sf::Texture playerCrushAttack2Texture;
	sf::Texture playerCrushAttack3Texture;
	sf::Texture playerCrushAttackTexture;

	sf::Texture backgroundTexture;
	sf::Texture background2Texture;
	sf::Texture background3Texture;
	sf::Texture groundTexture;
	sf::Texture ground2Texture;
	sf::Texture groundUpTexture;
	sf::Texture thornTexture;
	sf::Texture lavaTexture;
	sf::Texture TorchTexture;

	sf::Texture backgroundTexture2;
	sf::Texture background2Texture2;
	sf::Texture background3Texture2;

	sf::Texture backgroundTexture3;
	sf::Texture background2Texture3;
	sf::Texture background3Texture3;

	sf::Texture shoriken1Texture;
	sf::Texture shoriken2Texture;
	sf::Texture itemshoriken2Texture;

	sf::Texture botTexture;
	sf::Texture bot2Texture;
	sf::Texture bot2Texture2;
	sf::Texture bot2AttackTexture;
	sf::Texture bot2AttackTexture2;
	sf::Texture RunbotTexture;
	sf::Texture MagicTexture;
	sf::Texture MagicTexture2;

	sf::Texture BossTexture;
	sf::Texture Boss2IdleTexture;
	sf::Texture Boss2walkTexture;
	sf::Texture Boss2WaitAttack1Texture;
	sf::Texture Boss2WaitAttack2Texture;
	sf::Texture Boss2Attack1Texture;
	sf::Texture Boss2Attack2Texture;

	sf::Texture Boss2IdleLeftTexture;
	sf::Texture Boss2walkLeftTexture;
	sf::Texture Boss2WaitAttack1LeftTexture;
	sf::Texture Boss2WaitAttack2LeftTexture;
	sf::Texture Boss2Attack1LeftTexture;
	sf::Texture Boss2Attack2LeftTexture;

	sf::Texture heartTexture;
	sf::Texture coinTexture;
	sf::Texture GateTexture;
	//////////////////////////////////////Text///////////////////////////////////////////////
	sf::Text scoreText;
	sf::Text SScoreText;
	sf::Text STime;
	sf::Text timeText;

/////////////////////////////////////////////////////////////////////////////LoadTexture/////////////////////////////////////////////////////
	HPbarTexture.loadFromFile("resources/Gui/health_bar_decoration.png");
	playerIdleTexture.loadFromFile("resources/character/Player_Idle_Sheet.png");
	playerRunTexture.loadFromFile("resources/character/Player Run-Sheet.png");
	playerJumpTexture.loadFromFile("resources/character/Player Jump-Sheet.png");
	playerCruchTexture.loadFromFile("resources/character/Player Cruch.png");
	playerCruch2Texture.loadFromFile("resources/character/Player Cruchmirror.png");
	playerAttackTexture.loadFromFile("resources/character/Player Normal Sword Attackt-Sheet.png");
	playerAttack2Texture.loadFromFile("resources/character/Player Normal shuriken Attackt-Sheet.png");
	playerRunAttackTexture.loadFromFile("resources/character/Player Run Sword Attackt-Sheet.png");
	playerCrushAttackTexture.loadFromFile("resources/character/Player crush Sword Attackt-Sheet.png");
	playerCrushAttack2Texture.loadFromFile("resources/character/Player CruchAttack.png");
	playerCrushAttack3Texture.loadFromFile("resources/character/Player CruchAttack 3.png");

	backgroundTexture.loadFromFile("resources/background/bg_0_sky.png");
	background2Texture.loadFromFile("resources/background/bg_2_montain.png");
	background3Texture.loadFromFile("resources/background/bg_1_cloud.png");
	groundTexture.loadFromFile("resources/background/ground.png");
	ground2Texture.loadFromFile("resources/background/ground2.png");
	groundUpTexture.loadFromFile("resources/ground/ground_up.png");
	thornTexture.loadFromFile("resources/ground/thorn.png");

	backgroundTexture2.loadFromFile("resources/background/bg0_wall.png");
	background2Texture2.loadFromFile("resources/background/Lava-Sheet2.png");
	lavaTexture.loadFromFile("resources/background/Lava-Sheet.png");
	TorchTexture.loadFromFile("resources/background/Torch-Sheet.png");

	backgroundTexture3.loadFromFile("resources/background/bg3_0.png");
	background2Texture3.loadFromFile("resources/background/bg3_1.png");
	background3Texture3.loadFromFile("resources/background/bg3_2.png");

	shoriken1Texture.loadFromFile("resources/shoriken/shoriken1.png");
	shoriken2Texture.loadFromFile("resources/shoriken/shoriken2.png");
	MagicTexture.loadFromFile("resources/Magic/MagicShoot.png");
	MagicTexture2.loadFromFile("resources/Magic/MagicShoot2.png");

	botTexture.loadFromFile("resources/bot/wizard idle.png");
	bot2Texture.loadFromFile("resources/bot/Mage Idle-Sheet.png");
	bot2Texture2.loadFromFile("resources/bot/Mage Idle-Sheet2.png");
	bot2AttackTexture.loadFromFile("resources/bot/Mage Attack-Sheet.png");
	bot2AttackTexture2.loadFromFile("resources/bot/Mage Attack-Sheet2.png");
	RunbotTexture.loadFromFile("resources/bot/wizard fly forward.png");

	BossTexture.loadFromFile("resources/bot/sorcerer villain.png");
	Boss2IdleTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet idle.png");
	Boss2walkTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet walk.png");
	Boss2WaitAttack1Texture.loadFromFile("resources/bot/Minotaur - Sprite Sheet waitattak1.png");
	Boss2WaitAttack2Texture.loadFromFile("resources/bot/Minotaur - Sprite Sheet waitattack2.png");
	Boss2Attack1Texture.loadFromFile("resources/bot/Minotaur - Sprite Sheet attack1.png");
	Boss2Attack2Texture.loadFromFile("resources/bot/Minotaur - Sprite Sheet attack2.png");

	Boss2IdleLeftTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet idleLeft.png");
	Boss2walkLeftTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet walkLeft.png");
	Boss2WaitAttack1LeftTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet waitattak1Left.png");
	Boss2WaitAttack2LeftTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet waitattack2Left.png");
	Boss2Attack1LeftTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet attack1Left.png");
	Boss2Attack2LeftTexture.loadFromFile("resources/bot/Minotaur - Sprite Sheet attack2Left.png");


	heartTexture.loadFromFile("resources/item/heart.png");
	coinTexture.loadFromFile("resources/item/coin.png");
	GateTexture.loadFromFile("resources/background/gate.png");

	itemshoriken2Texture.loadFromFile("resources/item/itemshuriken2.png");
///////////////////////////////////////////////////////////////////////////////////////////////loadSound//////////////////////////////////////////////////
	music.openFromFile("resources/sounds/musicmenu.ogg");
	attackSwordSoundBuffer.loadFromFile("resources/sounds/attackSword.ogg");
	attackShorikenSoundBuffer.loadFromFile("resources/sounds/attackshoriken.ogg");
	JumpSoundBuffer.loadFromFile("resources/sounds/jumpsound.ogg");
	attackswordSoundCrashBuffer.loadFromFile("resources/sounds/crash.ogg");
	attackShorikenSoundCrashBuffer.loadFromFile("resources/sounds/crash.ogg");
	playercrashBotSoundBuffer.loadFromFile("resources/sounds/playercrashbot.ogg");
	SelectSoundBuffer.loadFromFile("resources/sounds/selectmenu.ogg");
	EnterSoundBuffer.loadFromFile("resources/sounds/enter.ogg");
	walkSoundBuffer.loadFromFile("resources/sounds/sfx_movement_footsteps1b.wav");
	thunderSoundBuffer.loadFromFile("resources/sounds/zapsplat_nature_thunder.wav");
///////////////////////////////////////////////////////////////////sound//////////////////////////////////////////////
	attackSwordSound.setBuffer(attackSwordSoundBuffer);
	attackShorikenSound.setBuffer(attackShorikenSoundBuffer);
	JumpSound.setBuffer(JumpSoundBuffer);
	attackswordSoundCrash.setBuffer(attackswordSoundCrashBuffer);
	attackShorikenSoundCrash.setBuffer(attackShorikenSoundCrashBuffer);
	playercrashBotSound.setBuffer(playercrashBotSoundBuffer);
	SelectSound.setBuffer(SelectSoundBuffer);
	EnterSound.setBuffer(EnterSoundBuffer);
	walkSound.setBuffer(walkSoundBuffer);
	thunderSound.setBuffer(thunderSoundBuffer);

	attackShorikenSound.setVolume(30);
	attackShorikenSoundCrash.setVolume(40);
	attackSwordSound.setVolume(100);
	attackswordSoundCrash.setVolume(40);
	JumpSound.setVolume(50);
	playercrashBotSound.setVolume(100);
	SelectSound.setVolume(20);
	EnterSound.setVolume(50);
	walkSound.setVolume(5);
	thunderSound.setVolume(50);
	
	music.setVolume(40);
	music.play();
	music.setLoop(true);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	background.setTexture(&backgroundTexture);
	background2.setTexture(&background2Texture);
	background3.setTexture(&background3Texture);
	ground.setTexture(&groundTexture);
	HPbar.setTexture(&HPbarTexture);

	HPbar.setPosition(20, 15);
	HP.setPosition(105, 25);
	Hpblack.setPosition(105, 25);
	HP.setFillColor(sf::Color::Red);
	Hpblack.setFillColor(sf::Color::Black);

	/////////////////////////////////////////////////////////font//////////////////////////////////////////////////////
	SScoreText.setFont(font);
	scoreText.setFont(font);
	timeText.setFont(font);
	STime.setFont(font);

	SScoreText.setPosition(1000,20);
	scoreText.setPosition(1150, 20);
	timeText.setPosition(830,20);
	STime.setPosition(700,20);

	SScoreText.setString("SCORE : ");
	STime.setString("TIME : ");

//////////////////////////////////////////////////////setOrigin///////////////////////////////////////////////////////

	shoriken.setOrigin(25, 25);
	player.setOrigin(72, 72);
	playerattacksword.setOrigin(96, 72);
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	int countidle = 0, countrun = 0, countattack = 0,countcrush=0,countcrush1=0,countjump=0;
	int faceRight = 1,faceLeft=0;
	int stateAttack1 = 0, stateAttack2 = 0, stateRunR = 0, stateRunL = 0, stateDown = 0, stateJump = 0,isJumping=0;
	int stateShoriken = 0;
	int countshoriken = 0;
	unsigned long  timelava = 0;
	int countlava = 0;
	int damageShuriken = 40;
	int damageMagicBot = 20;

	int score = 0;
	char Name;
	int Stage = 1;

	int xPlayer = 100, yPlayer = 602;
	int offSetX = 0, offSetY = 0;
	int xShoriken = 0, yShoriken = 0;

	int faceShoriken = 1;
	int yPlayerOnground= 602;
	float hpPlayer = 100;

	unsigned long time = 0; 
	unsigned long time2 = 0; //attack
	unsigned long time3 = 0; //shoriken

	unsigned long timebot[40];
	unsigned long timebot2[10];

	unsigned long timetorch=0;
	int counttorch = 0;

	int countbot[40];
	int countbot2[10];

	int checkOnground=21;
	int stateOnGroundUp = 0;
//////////////////////////////////////////////////////////////////bot///////////////////////////////////////////////////////////////
	float xBot[40], yBot[40];
	int stateBot[40];
	int stateRunbot[40];
	int statefaceLeftBot[40];
	int hpBot[40];
	int stateitem[40];
	int xItem[40], yItem[40];
	int randomitembot[40];
	for (int i = 0; i < 40; i++)
	{
		countbot[i] = 0;
		timebot[i] = 0;
		//xBot[i] = 1000 + 270*i;
		xBot[i] = random(1000, 10000);
		yBot[i] = 615;
		stateBot[i] = 1;
		hpBot[i] = 100;
		stateRunbot[i] = 0;
		statefaceLeftBot[i] = 0;
		stateitem[i] = 0;
		randomitembot[i] = random(1,10);
	}

///////////////////////////////////////////////////////////////bot2/////////////////////////////////////////////////////////////////
	float xBot2[10], yBot2[10];
	int stateBot2[10];
	int hpBot2[10];
	int stateBot2Attack[10];
	int xMagic[10], yMagic[10];
	int statemagic[10]; 
	unsigned long timemagic[10];
	int countmagic[10];
	for (int i = 0; i < 10; i++)
	{
		countbot2[i] = 0;
		countmagic[i] = 0;
		timebot2[i] = 0;
		timemagic[i] = 0;
		xBot2[i] = 750 + 550 * (i + 10);
		if (i%2==0)
		{
			yBot2[i] = 605;
		}
		else
		{
			yBot2[i] = 480;
		}		
		stateBot2[i] = 1;
		stateBot2Attack[i] = 0;
		hpBot2[i] = 100;
		xMagic[i]= xBot2[i];
		yMagic[i] = yBot2[i];
		statemagic[i] = 0;
	}
/////////////////////////////////////////////////Boss////////////////////////////////////////////
	int stateBoss = 1;
	int stateAttacckBoss = 0;
	int stateRunBoss = 0;
	int countboss = 0;
	unsigned long timeboss = 0;
	int xBoss = 12500;
	int yBoss = 550;
	int faceRightBoss = 0;
	int hpBoss = 9999;
	makeObject(&BossTexture, &Boss, 300, 300, 150, 150);
	Boss.setTexture(&BossTexture);
	Boss.setTextureRect(sf::IntRect(200, 0, -200, 200));
	/////////////////////////////////////////////////Boss2////////////////////////////////////////////
	int stateBoss2 = 1;
	int stateAttacckBoss2 = 0;
	int stateRunBoss2 = 0;
	int countidleboss2 = 0;
	int countwalkboss2 = 0;
	int countattackboss2 = 0;
	int countwaitattackboss2 = 0;

	int stateAttackBoss2 = 0;
	int statewaitattack1boss2 = 1;
	int statewaitattack2boss2 = 0;
	int stateattack1boss2 = 0;
	int stateattack2boss2 = 0;
	int stateidleboss2 = 1;
	int statewalkboss2 = 0;

	int randomattack;
	unsigned long timeboss2 = 0;
	int xBoss2 = 12500;
	int yBoss2 = 570;
	int faceRightBoss2 = 0;
	int hpBoss2 = 15000;
	Boss2.setOrigin(175,175);
/////////////////////////////////////////////////////////////////////gate////////////////////////////////////////////////
	int xGate = 13000, yGate = 600;
	makeObject(&GateTexture,&Gate,100,150,50,75);
////////////////////////////////////////////////////////////groundUp/////////////////////////////////////////////////////////////////////
	int stateOngrond[20];
	int xGround[20], yGround[20];
	for (int i = 0; i < 20; i++)
	{
		stateOngrond[i] = 0;
		xGround[i] = 750 + 550 * i;
		yGround[i] = 550;
		
	}
//////////////////////////////////////////////////////////thorn//////////////////////////////////////////////////////////////////////
	int xThorn[30], yThorn[30];
	for (int i = 0; i < 30; i++)
	{
		//xThorn[i] = random(100,12000);
		//yThorn[i] = 660;
		if (i<=10)
		{
			xThorn[i] = 750 + 550 * i;
			yThorn[i] = 660;
		}
		else if(i<=20)
		{
			xThorn[i] = 680 + 550 * (i-5);
			yThorn[i] = 660;
		}
		else if(i<30)
		{
			xThorn[i] = 820 + 550 * (i - 10);
			yThorn[i] = 660;
		}
				
	}
/////////////////////////////////////////////////////////////makeObject///////////////////////////////////////////////////////////////////
	for(int i = 0; i < 40; i++)
	{
		makeObject(&botTexture, &bot[i],140,140,70,70);
	}
	for (int i = 0; i < 10; i++)
	{
		makeObject(&bot2Texture, &bot2[i],120,140,60,70);
		makeObject(&MagicTexture, &Magic[i], 40, 40, 20, 20);
	}
	for (int i = 0; i < 30; i++)
	{
		makeObject(&thornTexture, &thorn[i], 64, 48,32,24);
	}
	for (int i = 0; i < 20; i++)
	{
		makeObject(&groundUpTexture,&groundUp[i], 64, 32, 32, 1);
	}
	for (int i = 0; i < 40; i++)		
	{
		if (randomitembot[i]<2)
		{
			makeObject(&heartTexture, &item[i], 50, 50, 25, 25);
		}
		if (randomitembot[i] > 2)
		{
			makeObject(&coinTexture, &item[i], 50, 50, 25, 25);
		}
	
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	sf::Clock timemillis;
	sf::Clock timesec;
	unsigned long millis;
	unsigned long timeGame;
	unsigned long pausetimeGame=0;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	int Mode = 1;
	int delay = 0;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	while (window.isOpen())
	{
		
		millis = timemillis.getElapsedTime().asMilliseconds();
		timeGame = pausetimeGame+timesec.getElapsedTime().asSeconds();
		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == sf::Event::Closed)
				window.close();
		}
		/////////////////////////////////////////////////////////////////////////////
		if (MenuState == true)
		{
			if (Mode==1)
			{
				Select.setPosition(600, 210);
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
				{
					Stage = 1;
					damageMagicBot = 20;
					background.setTexture(&backgroundTexture);
					background2.setTexture(&background2Texture);
					background3.setTexture(&background3Texture);
					ground.setTexture(&groundTexture);
					delay = millis;
					EnterSound.play();
					music.openFromFile("resources/sounds/Sound of Games The Last Ninja - HQ-2.ogg");
					music.play();
					timeGame = timesec.restart().asSeconds();
					pausetimeGame = 0;
					countidle = 0 ,countrun = 0, countattack = 0, countcrush = 0, countcrush1 = 0, countjump = 0;
					faceRight = 1, faceLeft = 0;
					stateAttack1 = 0, stateAttack2 = 0, stateRunR = 0, stateRunL = 0, stateDown = 0, stateJump = 0, isJumping = 0;
					stateShoriken = 0;
					countshoriken = 0;
					score = 0;
					xPlayer = 100, yPlayer = 402;
					offSetX = 0, offSetY = 0;
					xShoriken = 0, yShoriken = 0;
					faceShoriken = 1;
					yPlayerOnground = 602;
					hpPlayer = 100;
					time = 0;
					time2 = 0; //attack
					time3 = 0; //shoriken
					checkOnground = 21;
					stateOnGroundUp = 0;
					///////////////////////////////////////////////////////////re_ground///////////////////////////////////////////////
					for (int i = 0; i < 20; i++)
					{
						stateOngrond[i] = 0;
						xGround[i] = 750 + 550 * i;
						yGround[i] = 550;
					}
					
					////////////////////////////////////////////////////////re-bot////////////////////////////////////////////////////////////////////////
					for (int i = 0; i < 40; i++)
					{
						countbot[i] = 0;
						timebot[i] = 0;
						//xBot[i] = 1000 + 270 * i;
						xBot[i] = random(1000, 10000);
						yBot[i] = 615;
						stateBot[i] = 1;
						hpBot[i] = 100;
						stateRunbot[i] = 0;
						statefaceLeftBot[i] = 0;
						stateitem[i] = 0;
						randomitembot[i] = random(1, 8);
						
					}
					/////////////////////////////////////////////////////////////re-bot2////////////////////////////////////////////////////////////////////
					for (int i = 0; i < 10; i++)
					{
						countbot2[i] = 0;
						countmagic[i] = 0;
						timebot2[i] = 0;
						timemagic[i] = 0;
						xBot2[i] = 750 + 550 * (i + 10);
						if (i % 2 == 0)
						{
							yBot2[i] = 605;
						}
						else
						{
							yBot2[i] = 480;
						}
						stateBot2[i] = 1;
						stateBot2Attack[i] = 0;
						hpBot2[i] = 100;
						xMagic[i] = xBot2[i];
						yMagic[i] = yBot2[i];
						statemagic[i] = 0;
					}
					/////////////////////////////////////////////////Boss////////////////////////////////////////////
					stateBoss = 1;
					stateAttacckBoss = 0;
					stateRunBoss = 0;
					countboss = 0;
					timeboss = 0;
					xBoss = 12500;
					yBoss = 550;
					faceRightBoss = 0;
					hpBoss = 9999;
					makeObject(&BossTexture, &Boss, 300, 300, 150, 150);
					Boss.setTexture(&BossTexture);
					Boss.setTextureRect(sf::IntRect(200, 0, -200, 200));
					//////////////////////////////////////////////////////////////////////////////////////////////////////
					PlayState = true;
					MenuState = false;
				}
			}
			///////////////////////////////////////////////////////////
			if (Mode==2)
			{
				Select.setPosition(585, 310);
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
				{
					delay = millis;
					EnterSound.play();
					ScoreState = true;
					MenuState = false;
				}
			}
			//////////////////////////////////////////////////////////
			if (Mode==3)
			{
				Select.setPosition(530, 410);
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
				{
					delay = millis;
					HowtoplayState = true;
					MenuState = false;
				}
			}
			if (Mode==4)
			{
				Select.setPosition(600, 510);
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
				{
					delay = millis;
					window.close();
					EnterSound.play();
				}
			}
			/////////////////////////////////////////////////////////////
			if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Down) || sf::Joystick::getAxisPosition(0, sf::Joystick::Y) > 30) &&millis-delay>=300)
			{
				delay = millis;
				Mode+=1;
				SelectSound.play();
				if (Mode>4)
				{
					Mode = 1;
				}
			}
			if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Up) || sf::Joystick::getAxisPosition(0, sf::Joystick::Y) < -30) && millis - delay >= 300)
			{
				delay = millis;
				Mode -= 1;
				SelectSound.play();
				if (Mode < 1)
				{
					Mode = 4;
				}
			}
			/////////////////////////////////////////////////////////////////////
			if (sf::Keyboard::isKeyPressed(sf::Keyboard::Escape) && millis - delay >= 300)
			{
				delay = millis;
				window.close();
			}
			///////////////////////////////////////////////////////////////////////
			ExitText.setPosition(630, 500);
			window.clear();
			window.draw(Menu1);
			window.draw(Menu2);
			window.draw(Menu3);
			window.draw(PlayText);
			window.draw(ScoreBoardText);
			window.draw(HowtoplayText);
			window.draw(ExitText);
			window.draw(Select);
			window.display();
		}
		////////////////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		if (HowtoplayState==true)
		{
			if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Escape)|| sf::Keyboard::isKeyPressed(sf::Keyboard::Enter)|| sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
			{
				delay = millis;
				HowtoplayState = false;
				MenuState = true;
			}
			window.clear();
			window.draw(howtoplay);
			window.display();
		}
		////////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		if (ScoreState == true)
		{
			if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Escape) || sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
			{
				delay = millis;
				ScoreState = false;
				MenuState = true;
			}
			window.clear();
			window.draw(Menu1);
			window.draw(Menu2);
			window.draw(highscoreTitle);
			for (int i=0;i<5;i++)
			{
					window.draw(highscoreNameText[i]);
					window.draw(highscoreScoreText[i]);
			}
			window.display();
		}
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		if (PlayState==true)
		{
			scoreText.setPosition(1150, 20);
			//////////////////////////////////////////////////////////keyboardInput///////////////////////////////////////////////
			if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Escape)|| sf::Joystick::isButtonPressed(0,4))&&millis-delay>=300&& PauseState==false)
			{
				delay = millis;
				pausetimeGame = timeGame;
				music.pause();
				PauseState = true;
			}
			if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Escape) || sf::Joystick::isButtonPressed(0, 4)) && millis - delay >= 300 && PauseState == true)
			{
				delay = millis;
				timeGame = timesec.restart().asSeconds();
				music.play();
				PauseState = false;
			}

			if (PauseState == false)
			{
				//////////////////////////////////////////////////////////hack/////////////////////////////////////////////
				if (sf::Keyboard::isKeyPressed(sf::Keyboard::P)&&millis-delay>=300&&Stage<5)
				{
					delay = millis;
					Stage += 1;
				}
				if (sf::Keyboard::isKeyPressed(sf::Keyboard::O) && millis - delay >= 300 && Stage < 5)
				{
					delay = millis;
					xPlayer=11800;
				}
				if (sf::Keyboard::isKeyPressed(sf::Keyboard::W) && millis - delay >= 300 && hpPlayer<100)
				{
					delay = millis;
					hpPlayer += 50;
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////
				/////////////////////////RunLeft/////////////////////////////
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Left) || (sf::Joystick::getAxisPosition(0, sf::Joystick::X)<-30))&& xPlayer >= 0 && stateAttack2 == 0)
				{
					stateRunL = 1;
					faceLeft = 1;
					faceRight = 0;
				}
				else
				{
					stateRunL = 0;
				}
				//////////////////////////runRight/////////////////////////////////////////
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Right) || (sf::Joystick::getAxisPosition(0, sf::Joystick::X) > 30)) && xPlayer < 13300 && stateAttack2 == 0)
				{
					faceRight = 1;
					faceLeft = 0;
					stateRunR = 1;
				}
				else
				{
					stateRunR = 0;
				}
				/////////////////////////////Jump////////////////////////////////////
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Up) || sf::Joystick::isButtonPressed(0, 3)) && stateJump == 0 && stateAttack1 == 0 && stateAttack2 == 0 && yPlayer >= yPlayerOnground && isJumping == 0)
				{
					stateJump = 1;
					isJumping = 1;
					JumpSound.play();
				}
				/////////////////////////////attackShorikan//////////////&& stateRunL == 0 && stateRunR == 0///////////////
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::X) || sf::Joystick::isButtonPressed(0,1)) && stateShoriken == 0 && stateJump == 0 && stateAttack1 == 0&&millis - delay >= 300)
				{
					delay = millis;
					stateAttack2 = 1;
					stateShoriken = 1;
					if (faceRight == 1)
					{
						faceShoriken = 1;
					}
					else
					{
						faceShoriken = 0;
					}
					attackShorikenSound.play();
				}

				///////////////////////////Crush//////////////////////////////////////////
				if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down) || sf::Joystick::isButtonPressed(0, 0)||(sf::Joystick::getAxisPosition(0, sf::Joystick::Y) > 50))
				{
					stateDown = 1;
				}
				else
				{
					stateDown = 0;
				}
				//////////////////////////attackSword//////////////////////////////////////
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Z) || sf::Joystick::isButtonPressed(0, 2) )&& stateJump == 0 && stateAttack2 == 0)
				{
					stateAttack1 = 1;
				}
				////////////////////////////////////////////////////////////////////////////
				//////////////////////////////////////restartCount////////////////////////////
				if (stateAttack1 == 0 && stateAttack2 == 0)
				{
					countattack = 0;
				}
				if (stateJump == 0)
				{
					countjump = 0;
				}
				if (stateRunL == 0 && stateRunR == 0)
				{
					countrun = 0;
				}

				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

						///////////////////////ClassPlayer///////////////////////////
				/////////////////////////////////Idle//////////////////////////////////////////////
				if (faceRight == 1 && stateRunL == 0 && stateRunR == 0 && stateJump == 0)
				{
					animation(&playerIdleTexture, &player, &countidle, 144, 48, 48, millis, &time, 200);

				}
				else if (faceLeft == 1 && stateRunL == 0 && stateRunR == 0 && stateJump == 0)
				{
					animation(&playerIdleTexture, &player, &countidle, 144, -48, 48, millis, &time, 200);
				}
				else if (stateRunL == stateRunR && stateJump == 0)
				{
					if (faceRight == 1)
					{
						animation(&playerIdleTexture, &player, &countidle, 144, 48, 48, millis, &time, 200);
					}
					else if (faceLeft == 1 && stateJump == 0)
					{
						animation(&playerIdleTexture, &player, &countidle, 144, -48, 48, millis, &time, 200);
					}
				}
				///////////////////////////////////Run///////////////////////////////////
				if (stateRunL == 1 && faceLeft == 1 && stateRunR == 0 && stateAttack1 == 0 && stateDown == 0 && stateJump == 0)
				{
					xPlayer -= 2;
					animation(&playerRunTexture, &player, &countrun, 240, -48, 48, millis, &time, 100);
					/*if (countrun%96==0)
					{
						walkSound.play();
					}*/

				}
				if (stateRunR == 1 && faceRight == 1 && stateRunL == 0 && stateAttack1 == 0 && stateDown == 0 && stateJump == 0)
				{
					xPlayer += 2;
					animation(&playerRunTexture, &player, &countrun, 240, 48, 48, millis, &time, 100);
					/*if (countrun % 96 == 0)
					{
						walkSound.play();
					}*/

				}

				///////////////////////////////////////////Crush//////////////////////////////////////////////
				if (stateDown == 1 && stateJump == 0 && stateAttack2 == 0 && stateAttack1 == 0)
				{
					if (faceRight == 1)
					{
						player.setTexture(&playerCruchTexture);
						player.setTextureRect(sf::IntRect(0, 0, 48, 48));
					}
					if (faceLeft == 1)
					{
						player.setTexture(&playerCruch2Texture);
						player.setTextureRect(sf::IntRect(0, 0, 48, 48));
					}
				}

				/////////////////////////////////////////////Jump////////////////////////////////////////////////////////////
				if (stateJump == 1 && faceLeft == 1 && stateAttack1 == 0)
				{
					jump(&isJumping, &yPlayer, yPlayerOnground, 210, 2, 2, &stateJump);
					player.setTexture(&playerJumpTexture);
					player.setTextureRect(sf::IntRect(144, 0, -48, 48));

				}
				if (stateJump == 1 && faceRight == 1 && stateAttack1 == 0)
				{
					jump(&isJumping, &yPlayer, yPlayerOnground, 210, 2, 2, &stateJump);
					player.setTexture(&playerJumpTexture);
					player.setTextureRect(sf::IntRect(144, 0, 48, 48));
				}
				//////////////////////////////////////jumpRun//////////////////////////////////////////////////////////
				if (stateJump == 1 && faceLeft == 1 && stateAttack1 == 0 && stateRunL == 1)
				{
					xPlayer -= 2;
					jump(&isJumping, &yPlayer, yPlayerOnground, 210, 1, 1, &stateJump);
					player.setTexture(&playerJumpTexture);
					player.setTextureRect(sf::IntRect(144, 0, -48, 48));
				}
				if (stateJump == 1 && faceRight == 1 && stateAttack1 == 0 && stateRunR == 1)
				{
					xPlayer += 2;
					jump(&isJumping, &yPlayer, yPlayerOnground, 210, 1, 1, &stateJump);
					player.setTexture(&playerJumpTexture);
					player.setTextureRect(sf::IntRect(144, 0, 48, 48));
				}
				if (stateJump == 0 && yPlayer < yPlayerOnground && isJumping == 0)
				{
					if (faceRight == 1)
					{
						player.setTexture(&playerJumpTexture);
						player.setTextureRect(sf::IntRect(144, 0, 48, 48));
					}
					else
					{
						player.setTexture(&playerJumpTexture);
						player.setTextureRect(sf::IntRect(144, 0, -48, 48));
					}
					if (yPlayerOnground - yPlayer >= 3)
					{
						yPlayer += 2;
					}
					else
					{
						yPlayer += 1;
					}
				}
				//////////////////////////////////////////AttackSwordNormal///////////////////////////////////////////////////////
				if (stateAttack1 == 1 && stateDown == 0 && stateRunL == 0 && stateRunR == 0 && stateJump == 0)
				{
					if (faceRight == 1)
					{
						animationstate(&playerAttackTexture, &playerattacksword, &countattack, 320, 64, 48, &stateAttack1, millis, &time2, 50);
						if (countattack == 128)
						{
							attackSwordSound.play();
						}
					}
					else if (faceLeft == 1)
					{
						animationstate(&playerAttackTexture, &playerattacksword, &countattack, 320, -64, 48, &stateAttack1, millis, &time2, 50);
						if (countattack == 128)
						{
							attackSwordSound.play();
						}
					}
				}
				////////////////////////////////////////RunAttackSword////////////////////////////////////
				if (stateAttack1 == 1 && stateRunR == 1 && faceRight == 1 && stateDown == 0 && stateJump == 0)
				{
					xPlayer += 2;
					animationstate(&playerRunAttackTexture, &playerattacksword, &countattack, 320, 64, 48, &stateAttack1, millis, &time2, 50);
					if (countattack == 128)
					{
						attackSwordSound.play();
					}
				}
				else if (stateAttack1 == 1 && stateRunL == 1 && faceLeft == 1 && stateDown == 0 && stateJump == 0)
				{
					xPlayer -= 2;
					animationstate(&playerRunAttackTexture, &playerattacksword, &countattack, 320, -64, 48, &stateAttack1, millis, &time2, 50);
					if (countattack == 128)
					{
						attackSwordSound.play();
					}
				}
				///////////////////////////////////////crushAttackSword///////////////////////////////////////////////
				if (stateAttack1 == 1 && stateDown == 1 && stateJump == 0)
				{
					if (faceRight == 1)
					{
						animationstate(&playerCrushAttackTexture, &playerattacksword, &countattack, 320, 64, 48, &stateAttack1, millis, &time2, 50);
						if (countattack == 128)
						{
							attackSwordSound.play();
						}
					}
					else if (faceLeft == 1)
					{
						animationstate(&playerCrushAttackTexture, &playerattacksword, &countattack, 320, -64, 48, &stateAttack1, millis, &time2, 50);
						if (countattack == 128)
						{
							attackSwordSound.play();
						}
					}
				}

				///////////////////////////////////////crushAttackshorikan///////////////////////////////////////////////

				if (stateAttack2 == 1 && stateDown == 1 && stateJump == 0)
				{
					if (faceRight == 1)
					{
						animationstate(&playerCrushAttack3Texture, &player, &countcrush, 96, -48, 48, &stateAttack2, millis, &time2, 100);
					}
					if (faceLeft == 1)
					{
						animationstate(&playerCrushAttack2Texture, &player, &countcrush, 96, -48, 48, &stateAttack2, millis, &time2, 100);
					}
				}
				///////////////////////////////////////AttackShorikan//////////////////////////////////////////////////
				if (stateAttack2 == 1 && stateDown == 0 && stateJump == 0)
				{
					if (faceRight == 1)
					{
						animationstate(&playerAttack2Texture, &playerattacksword, &countattack, 320, 64, 48, &stateAttack2, millis, &time2, 100);
					}
					else if (faceLeft == 1)
					{
						animationstate(&playerAttack2Texture, &playerattacksword, &countattack, 320, -64, 48, &stateAttack2, millis, &time2, 100);
					}
				}

				////////////////////////////////////////////////////////////////////////////////////////////////

				//////////////////////////////////////////////////////////////////////shoriken//////////////////////////////////////////////////
				///////////////////////////////////////shoriken//////////////////////////////////////////////////
				if (stateShoriken == 1)
				{
					if (faceShoriken == 1)
					{
						xShoriken += 3;
						animation(&shoriken1Texture, &shoriken, &countshoriken, 106, 53, 48, millis, &time3, 50);
					}
					else if (faceShoriken == 0)
					{
						xShoriken -= 3;
						animation(&shoriken1Texture, &shoriken, &countshoriken, 106, 53, 48, millis, &time3, 50);

					}
					if (xPlayer > 600 && xPlayer < 12570)
					{
						if (xShoriken >= xPlayer + 750 || xShoriken <= xPlayer - 750)
						{
							stateShoriken = 0;
						}
					}
					else
					{
						if (xShoriken >= xPlayer + 1200 || xShoriken <= xPlayer - 1200)
						{
							stateShoriken = 0;
						}
					}

				}
				if (stateShoriken == 0)
				{
					xShoriken = xPlayer;
					yShoriken = yPlayer + 10;
				}
			///////////////////////////////////////////////////stage1///////////////////////////////////////////////////////////////////
			if (Stage==1)
			{
				////////////////////////////////////////////////////////checkBot/////////////////////////////////////////////////////////////////////////
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			///////////////////////////////////////////////////crashbotsword///////////////////////////////////////////////
				if (stateAttack1 == 1)
				{
					if (faceRight == 1)
					{
						/////////////////boos//////////////////////////////
						if (stateBoss == 1)
						{
							if (distance(xBoss, xPlayer, yBoss, yPlayer) <= 120 && xPlayer < xBoss && countattack >= 128)
							{
								hpBoss -= 5;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 100 && xPlayer < xBot[i] && countattack >= 128)
								{
									hpBot[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
						/////////////////////////bot2//////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 100 && xPlayer < xBot2[i] && countattack >= 128)
								{
									hpBot2[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
					}
					////////////////////////////////////////////////////////////////////////////////////////////
					if (faceRight == 0)
					{
						////////////////////////////boss//////////////////////
						if (stateBoss == 1)
						{
							if (distance(xBoss, xPlayer, yBoss, yPlayer) <= 120 && xPlayer > xBoss && countattack >= 128)
							{
								hpBoss -= 5;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						//////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 100 && xPlayer > xBot[i] && countattack >= 128)
								{
									hpBot[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
						/////////////////////////////bot2/////////////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 100 && xPlayer > xBot2[i] && countattack >= 128)
								{
									hpBot2[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
					}
				}
				//////////////////////////////////crashbotshoriken///////////////////////////////////////////////////////
				if (stateShoriken == 1)
				{
					//////////////////////////////////boss///////////////////////////
					if (faceRight == 1)
					{
						if (stateBoss == 1)
						{
							if (distance(xBoss, xShoriken, yBoss, yShoriken) <= 70 && xShoriken < xBoss)
							{
								hpBoss -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}
						//////////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xShoriken, yBot[i], yShoriken) <= 40 && xShoriken < xBot[i])
								{
									hpBot[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
						//////////////////////////////////bot2///////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xShoriken, yBot2[i], yShoriken) <= 40 && xShoriken < xBot2[i])
								{
									hpBot2[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
					}
					//////////////////////////////////////////////////////////////////////////////////////////////////////////
					if (faceRight == 0)
					{
						//////////////////////////////////boss//////////////////////////////////////
						if (stateBoss == 1)
						{
							if (distance(xBoss, xShoriken, yBoss, yShoriken) <= 70 && xShoriken > xBoss)
							{
								hpBoss -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}

						//////////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xShoriken, yBot[i], yShoriken) <= 40 && xShoriken > xBot[i])
								{
									hpBot[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
						//////////////////////////////////bot2///////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xShoriken, yBot2[i], yShoriken) <= 40 && xShoriken > xBot2[i])
								{
									hpBot2[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
					}


				}
				///////////////////////////////////////////////////////playercrashbot////////////////////////////////////
				if (faceRight == 1 || faceRight == 0)
				{
					for (int i = 0; i < 40; i++)
					{
						if (stateBot[i] == 1)
						{
							if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 70 && xPlayer < xBot[i])
							{
								xPlayer -= 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
					for (int i = 0; i < 10; i++)
					{
						if (stateBot2[i] == 1)
						{
							if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 30 && xPlayer < xBot2[i])
							{
								xPlayer -= 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
				}
				if (faceRight == 1 || faceRight == 0)
				{
					for (int i = 0; i < 40; i++)
					{
						if (stateBot[i] == 1)
						{
							if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 70 && xPlayer > xBot[i])
							{
								xPlayer += 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
					for (int i = 0; i < 10; i++)
					{
						if (stateBot2[i] == 1)
						{
							if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 30 && xPlayer > xBot2[i])
							{
								xPlayer += 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
				}
				//////////////////////////////////////////////////////////////playcrashthorn////////////////////////////////////////
				if (faceRight == 1)
				{
					for (int i = 0; i < 30; i++)
					{
						if (player.getGlobalBounds().intersects(thorn[i].getGlobalBounds()) && distance(xThorn[i], xPlayer, yThorn[i], yPlayer) <= 70 && xPlayer < xThorn[i])
						{
							xPlayer -= 50;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
					}
				}
				if (faceRight == 0)
				{
					for (int i = 0; i < 30; i++)
					{
						if (player.getGlobalBounds().intersects(thorn[i].getGlobalBounds()) && distance(xThorn[i], xPlayer, yThorn[i], yPlayer) <= 70 && xPlayer > xThorn[i])
						{
							xPlayer += 50;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
					}
				}
				///////////////////////////////////////autoRunBot/////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateBot[i] == 1)
					{
						if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 1000)
						{
							stateRunbot[i] = 1;
							statefaceLeftBot[i] = 1;
						}

					}
				}
				///////////////////////////////////////autoattackBot2/////////////////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2[i] == 1)
					{
						if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 700)
						{
							stateBot2Attack[i] = 1;
						}

					}
				}

				//////////////////////////////////////////////////////statatehpbot//////////////////////////////////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (hpBot[i] <= 0)
					{
						stateBot[i] = 0;
						stateRunbot[i] = 0;
					}
				}
				for (int i = 0; i < 10; i++)
				{
					if (hpBot2[i] <= 0)
					{
						stateBot2[i] = 0;
						stateBot2Attack[i] = 0;
					}
				}
				if (hpBoss <= 0 && stateBoss == 1)
				{
					if (timeGame < 110)
					{
						score += 500;
					}
					score += 1000;
					stateBoss = 0;
					stateAttacckBoss = 0;
					stateRunBoss = 0;
				}
				/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

						////////////////////////////////////////////////////////////////classBot////////////////////////////////////////////////////////
				////////////////////////////////////////////////////////botidle///////////////////////////////////////////////////////////////////////////////////////	
						/////////////////////////////bot1////////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateBot[i] == 1 && stateRunbot[i] == 0)
					{
						animation(&botTexture, &bot[i], &countbot[i], 720, 80, 80, millis, &timebot[i], 150);
					}
				}

				/////////////////////////////botRun/////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateRunbot[i] == 1 && statefaceLeftBot[i] == 1)
					{
						xBot[i] -= 0.5;
						animation(&RunbotTexture, &bot[i], &countbot[i], 400, 80, 80, millis, &timebot[i], 150);
					}

				}
				/////////////////////////////////////////////////////////////////Bot2/////////////////////////////////////////////////////////
						//////////////////////////////bot2idle////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2[i] == 1 && stateBot2Attack[i] == 0)
					{
						animation(&bot2Texture, &bot2[i], &countbot2[i], 96, -48, 48, millis, &timebot2[i], 150);
					}
				}
				////////////////////////////bot2attack///////////////////////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2Attack[i] == 1 && stateBot2[i] == 1 && statemagic[i] == 0)
					{
						animation(&bot2AttackTexture, &bot2[i], &countbot2[i], 96, -48, 48, millis, &timebot2[i], 300);
						if (countbot2[i] >= 96)
						{
							stateBot2Attack[i] = 0;
							statemagic[i] = 1;
						}
					}
					if (statemagic[i] == 1)
					{
						animation(&MagicTexture, &Magic[i], &countmagic[i], 96, -48, 16, millis, &timemagic[i], 100);
						xMagic[i] -= 2;
					}
					if (distance(xPlayer, xMagic[i], yPlayer, yMagic[i]) <= 30 && stateDown == 0 && statemagic[i] == 1)
					{
						hpPlayer -= damageMagicBot;
						playercrashBotSound.play();
						statemagic[i] = 0;
						xMagic[i] = xBot2[i];
						yMagic[i] = yBot2[i];
					}
					if (distance(xBot2[i], xMagic[i], yBot2[i], yMagic[i]) >= 1000)
					{
						statemagic[i] = 0;
						xMagic[i] = xBot2[i];
						yMagic[i] = yBot2[i];
					}

				}
				///////////////////////////////////////////////////////////////////////////////////////////////////////////////
						///////////////////////////Boss/////////////////////////////////
				if (stateBoss == 1)
				{
					if (stateAttacckBoss == 0)
					{
						if (xPlayer < xBoss)
						{
							faceRightBoss = 0;
						}
						if (xPlayer > xBoss)
						{
							faceRightBoss = 1;
						}
					}
					if (stateRunBoss == 0 && distance(xBoss, xPlayer, yBoss, yPlayer) <= 700 && distance(xBoss, xPlayer, yBoss, yPlayer) >= 150 && xBoss > 11700)
					{
						stateRunBoss = 1;
					}
					if (distance(xBoss, xPlayer, yBoss, yPlayer) < 150)
					{
						stateRunBoss = 0;
						stateAttacckBoss = 1;
					}
					if (xBoss <= 11700 || xPlayer <= 11600)
					{
						stateRunBoss = 0;
					}
					if (stateRunBoss == 0 && xBoss < 12500 && stateAttacckBoss == 0)
					{
						xBoss += 1;
						hpBoss += 5;
					}

				}
				/////////////////////////////////////Boss//////////////////////////////////////////////////
				if (stateRunBoss == 1 && stateAttacckBoss == 0)
				{
					if (faceRightBoss == 0)
					{
						xBoss -= 1;
						Boss.setTexture(&BossTexture);
						Boss.setTextureRect(sf::IntRect(200, 0, -200, 200));
					}
					if (faceRightBoss == 1)
					{
						xBoss += 1;
						Boss.setTexture(&BossTexture);
						Boss.setTextureRect(sf::IntRect(200, 0, 200, 200));
					}
				}
				if (stateAttacckBoss == 1)
				{
					if (faceRightBoss == 0)
					{
						animationstate(&BossTexture, &Boss, &countboss, 1800, -200, 200, &stateAttacckBoss, millis, &timeboss, 250);
						if (countboss==1400)
						{
							thunderSound.play();
						}
					}
					else
					{
						animationstate(&BossTexture, &Boss, &countboss, 1800, 200, 200, &stateAttacckBoss, millis, &timeboss, 250);
						if (countboss == 1400)
						{
							thunderSound.play();
						}
					}
				}
				/////////////////////////////////////////////////crash///////////////////////////////////
					////////////////////////////////playercrashBot////////////////////////////////
				if (stateBoss == 1)
				{
					if (distance(xBoss, xPlayer, yBoss, yPlayer) <= 60)
					{
						hpPlayer -= 20;
						if (faceRight == 1)
						{
							xPlayer -= 20;
							playercrashBotSound.play();
						}
						else
						{
							xPlayer += 20;
							playercrashBotSound.play();
						}
					}
					/////////////////////////////////////bossattack////////////////////////////////////////
					if (stateAttacckBoss == 1 && countboss >= 1800 && distance(xBoss, xPlayer, yBoss, yPlayer) <= 150)
					{
						if (faceRightBoss == 0 && xPlayer < xBoss)
						{
							hpPlayer -= 1;
						}
						if (faceRightBoss == 1 && xPlayer > xBoss)
						{
							hpPlayer -= 1;
						}
					}
				}

				/////////////////////////////////////////////////playerOnObject///////////////////////////////////////////////
				for (int i = 0; i < 20; i++)
				{
					if (distance(xGround[i], xPlayer, yGround[i], yPlayer) <= 70 && yPlayer < yGround[i] && (isJumping == 0 || stateJump == 0))
					{
						checkOnground = i;
						stateJump = 0;
						yPlayerOnground = yGround[i] - 70;
						stateOnGroundUp = 1;
					}
				}
				if (distance(xGround[checkOnground], xPlayer, yGround[checkOnground], yPlayer) >= 70 || yPlayer - yPlayerOnground > 20)
				{
					stateOnGroundUp = 0;
					if (stateJump == 0 && isJumping == 0)
					{
						yPlayerOnground = 602;
					}
				}
				////////////////////////////////////////////item//////////////////////////////////////////////////////////
				for(int i=0;i<40;i++)
				{
					if (stateBot[i]==0&&stateitem[i]==0&& randomitembot[i] <=5)
					{
						stateitem[i] = 1;
						xItem[i] = xBot[i];
						yItem[i] = yBot[i] + 20;
						
					}
				}
				
				///////////////////////////////////////////////////////////////////////////////////////////////////////
				if (stateBoss == 0)
				{
					if (distance(xPlayer, xGate, yPlayer, yGate) <= 40)
					{
						Stage = 2;
					}
				}
				///////////////////////////////////////Text///////////////////////////////////////////////////////////////
				std::stringstream ss;
				ss << score;
				scoreText.setString(ss.str());

				std::stringstream st;
				st << timeGame;
				timeText.setString(st.str());

				///////////////////////
				///////////////////////////////////////////////////////////////////////////////////////////////////
				if (xPlayer > 600 && xPlayer < 12570)
				{
					offSetX = xPlayer - 600;
				}				

				////////////////////////////////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (distance(xPlayer, xItem[i], yPlayer, yItem[i]) <= 50 && stateitem[i] == 1)
					{
						if (randomitembot[i]<2)
						{
							hpPlayer += 10;
							stateitem[i] = 2;
							
						}
						if (randomitembot[i] >= 2)
						{
							score += 50;
							stateitem[i] = 2;
							
						}						
					}
					if (distance(xPlayer, xItem[i], yPlayer, yItem[i]) > 50&& distance(xPlayer, xItem[i], yPlayer, yItem[i]) < 100 && stateitem[i] == 1)
					{
						if (xItem[i]>xPlayer)
						{
							xItem[i] -= 1;
						}
						if (xItem[i] < xPlayer)
						{
							xItem[i] += 1;
						}
					}
					
				}
				////////////////////////////////////////////////////////////////////////////////////////////////

				shoriken.setPosition(xShoriken - offSetX, yShoriken);
				background.setPosition(-offSetX, 0);
				background2.setPosition(-offSetX, 0);
				background3.setPosition(-offSetX, 0);
				ground.setPosition(-offSetX, 510);
				player.setPosition(xPlayer - offSetX, yPlayer);
				playerattacksword.setPosition(xPlayer - offSetX, yPlayer);
				HP.setSize(sf::Vector2f(hpPlayer * 3, 30));

				window.clear();
				window.draw(background);
				window.draw(background3);
				window.draw(background2);
				window.draw(ground);
				//////ground/////
				for (int i = 0; i < 20; i++)
				{
					groundUp[i].setPosition(xGround[i] - offSetX, yGround[i]);
					window.draw(groundUp[i]);
				}
				//////////thorn////////////
				for (int i = 0; i < 30; i++)
				{
					thorn[i].setPosition(xThorn[i] - offSetX, yThorn[i]);
					window.draw(thorn[i]);
				}//
				///////item////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateitem[i] == 1)
					{				
						if (randomitembot[i] <= 2)
						{
							item[i].setTexture(&heartTexture);
						}
						else
						{
							item[i].setTexture(&coinTexture);
						}
						item[i].setPosition(xItem[i] - offSetX, yItem[i]);
						window.draw(item[i]);						
					}
				}
				///////////////bot1///////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateBot[i] == 1)
					{
						bot[i].setPosition(xBot[i] - offSetX, yBot[i]);
						window.draw(bot[i]);
					}
				}
				//////////////////bot2///////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2[i] == 1)
					{
						bot2[i].setPosition(xBot2[i] - offSetX, yBot2[i]);
						window.draw(bot2[i]);
					}
				}
				if (stateBoss == 1)
				{
					Boss.setPosition(xBoss - offSetX, yBoss);
					window.draw(Boss);
				}
				if (stateShoriken == 1)
				{
					window.draw(shoriken);
				}
				if (stateAttack1 == 1 || (stateAttack2 == 1 && stateDown == 0))
				{
					window.draw(playerattacksword);
				}
				else
				{
					window.draw(player);
				}
				for (int i = 0; i < 10; i++)
				{
					if (statemagic[i] == 1)
					{
						Magic[i].setPosition(xMagic[i] - offSetX, yMagic[i]);
						window.draw(Magic[i]);
					}
				}
				///////////////////gate/////////////////////
				if (stateBoss == 0)
				{
					Gate.setPosition(xGate - offSetX, yGate);
					window.draw(Gate);
				}
				window.draw(timeText);
				window.draw(STime);
				window.draw(scoreText);
				window.draw(SScoreText);
				window.draw(Hpblack);
				window.draw(HP);
				window.draw(HPbar);
				window.display();
			}
			if (Stage == 2)
			{
				ground.setTexture(&ground2Texture);
				background.setTexture(&backgroundTexture2);				
				xPlayer = 100;
				yPlayer = 602;
				offSetX = 0;
				Stage = 3;
				damageMagicBot = 30;
				for (int i = 0; i < 11; i++)
				{
					if (i>0&&i<6)
					{
						xGround[i] = 2500 + 250 * i;
					}
					if(i>=6&&i<11)
					{
						xGround[i] = 5265 + 250 * i;
					}
					yGround[i] = 550;					
				}
				////////////////////////////////////////////////////////re-bot////////////////////////////////////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					countbot[i] = 0;
					timebot[i] = 0;
					//xBot[i] = 1000 + 270 * i;
					xBot[i] = random(1000, 10000);
					yBot[i] = 615;
					stateBot[i] = 1;
					hpBot[i] = 100;
					stateRunbot[i] = 0;
					statefaceLeftBot[i] = 0;
					stateitem[i] = 0;
					randomitembot[i] = random(1, 8);
				}
				/////////////////////////////////////////////////////////////re-bot2////////////////////////////////////////////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					countbot2[i] = 0;
					countmagic[i] = 0;
					timebot2[i] = 0;
					timemagic[i] = 0;
					if (i<2)
					{
						xBot2[i] = 750 + (550*i);
					}
					else if(i<5)
					{
						xBot2[i] = 4000 + 550 * i;
					}
					else
					{
						xBot2[i] = 6000 + 550 * i;
					}
					
					yBot2[i] = 605;

					stateBot2[i] = 1;
					stateBot2Attack[i] = 0;
					hpBot2[i] = 100;
					xMagic[i] = xBot2[i];
					yMagic[i] = yBot2[i];
					statemagic[i] = 0;
				}
				/////////////////////////////////////////////////Boss2////////////////////////////////////////////
				stateBoss = 0;
				stateBoss2 = 1;
				stateAttacckBoss2 = 0;
				stateRunBoss2 = 0;
				countidleboss2 = 0;
				countwalkboss2 = 0;
				countattackboss2 = 0;
				countwaitattackboss2 = 0;
				stateAttackBoss2 = 0;
				statewaitattack1boss2 = 1;
				statewaitattack2boss2 = 0;
				stateattack1boss2 = 0;
				stateattack2boss2 = 0;
				stateidleboss2 = 1;
				statewalkboss2 = 0;
				timeboss2 = 0;
				xBoss2 = 12500;
				yBoss2 = 620;
				faceRightBoss2 = 0;
				hpBoss2 = 15000;
			}
			///////////////////////////////////////////////////////stage2///////////////////////////////////////////////////////
			if (Stage==3)
			{
				////////////////////////////////////////////////////////checkBot/////////////////////////////////////////////////////////////////////////
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			///////////////////////////////////////////////////crashbotsword///////////////////////////////////////////////
				if (stateAttack1 == 1)
				{
					if (faceRight == 1)
					{
						/////////////////boos2//////////////////////////////
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xPlayer, yBoss2, yPlayer) <= 150 && xPlayer < xBoss2 && countattack >= 128)
							{
								hpBoss2 -= 5;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 100 && xPlayer < xBot[i] && countattack >= 128)
								{
									hpBot[i] -= 100;
									score += 40;
									attackswordSoundCrash.play();
								}
							}

						}
						/////////////////////////bot2//////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 100 && xPlayer < xBot2[i] && countattack >= 128)
								{
									hpBot2[i] -= 100;
									score += 40;
									attackswordSoundCrash.play();
								}
							}

						}
					}
					////////////////////////////////////////////////////////////////////////////////////////////
					if (faceRight == 0)
					{
						////////////////////////////boss2//////////////////////
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xPlayer, yBoss2, yPlayer) <= 150 && xPlayer > xBoss2 && countattack >= 128)
							{
								hpBoss2 -= 5;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						//////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 100 && xPlayer > xBot[i] && countattack >= 128)
								{
									hpBot[i] -= 100;
									score += 40;
									attackswordSoundCrash.play();
								}
							}

						}
						/////////////////////////////bot2/////////////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 100 && xPlayer > xBot2[i] && countattack >= 128)
								{
									hpBot2[i] -= 100;
									score += 40;
									attackswordSoundCrash.play();
								}
							}

						}
					}
				}
				//////////////////////////////////crashbotshoriken///////////////////////////////////////////////////////
				if (stateShoriken == 1)
				{
					//////////////////////////////////boss2///////////////////////////
					if (faceRight == 1)
					{
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xShoriken, yBoss2, yShoriken) <= 70 && xShoriken < xBoss2)
							{
								hpBoss2 -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}
						//////////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xShoriken, yBot[i], yShoriken) <= 40 && xShoriken < xBot[i])
								{
									hpBot[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 30;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
						//////////////////////////////////bot2///////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xShoriken, yBot2[i], yShoriken) <= 40 && xShoriken < xBot2[i])
								{
									hpBot2[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 30;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
					}
					//////////////////////////////////////////////////////////////////////////////////////////////////////////
					if (faceRight == 0)
					{
						//////////////////////////////////boss//////////////////////////////////////
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xShoriken, yBoss2, yShoriken) <= 70 && xShoriken > xBoss2)
							{
								hpBoss2 -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}

						//////////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xShoriken, yBot[i], yShoriken) <= 40 && xShoriken > xBot[i])
								{
									hpBot[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 30;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
						//////////////////////////////////bot2///////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xShoriken, yBot2[i], yShoriken) <= 40 && xShoriken > xBot2[i])
								{
									hpBot2[i] -= damageShuriken;
									if (hpBot[i] <= 0)
									{
										score += 30;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
					}


				}
				///////////////////////////////////////////////////////playercrashbot////////////////////////////////////
				if (faceRight == 1 || faceRight == 0)
				{
					for (int i = 0; i < 40; i++)
					{
						if (stateBot[i] == 1)
						{
							if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 70 && xPlayer < xBot[i])
							{
								xPlayer -= 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
					for (int i = 0; i < 10; i++)
					{
						if (stateBot2[i] == 1)
						{
							if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 30 && xPlayer < xBot2[i])
							{
								xPlayer -= 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
				}
				if (faceRight == 1 || faceRight == 0)
				{
					for (int i = 0; i < 40; i++)
					{
						if (stateBot[i] == 1)
						{
							if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 70 && xPlayer > xBot[i])
							{
								xPlayer += 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
					for (int i = 0; i < 10; i++)
					{
						if (stateBot2[i] == 1)
						{
							if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 30 && xPlayer > xBot2[i])
							{
								xPlayer += 20;
								hpPlayer -= 20;
								playercrashBotSound.play();
							}
						}

					}
				}
				//////////////////////////////////////////////////////playercrashboss2////////////////////////////////////////////////////
				if (stateBoss2 == 1)
				{
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 70)
					{
						if (faceRight)
						{
							xPlayer -= 20;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
						else
						{
							xPlayer += 20;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
					}
				}
				//////////////////////////////////////////////////////////////playcrashthorn////////////////////////////////////////
				/*if (faceRight == 1)
				{
					for (int i = 0; i < 30; i++)
					{
						if (player.getGlobalBounds().intersects(thorn[i].getGlobalBounds()) && distance(xThorn[i], xPlayer, yThorn[i], yPlayer) <= 70 && xPlayer < xThorn[i])
						{
							xPlayer -= 50;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
					}
				}
				if (faceRight == 0)
				{
					for (int i = 0; i < 30; i++)
					{
						if (player.getGlobalBounds().intersects(thorn[i].getGlobalBounds()) && distance(xThorn[i], xPlayer, yThorn[i], yPlayer) <= 70 && xPlayer > xThorn[i])
						{
							xPlayer += 50;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
					}
				}*/
				///////////////////////////////////////autoRunBot/////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateBot[i] == 1)
					{
						if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 1000)
						{
							stateRunbot[i] = 1;
							statefaceLeftBot[i] = 1;
						}

					}
				}
				///////////////////////////////////////autoattackBot2/////////////////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2[i] == 1)
					{
						if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 700)
						{
							stateBot2Attack[i] = 1;
						}

					}
				}

				//////////////////////////////////////////////////////statatehpbot//////////////////////////////////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (hpBot[i] <= 0)
					{
						stateBot[i] = 0;
						stateRunbot[i] = 0;
					}
				}
				for (int i = 0; i < 10; i++)
				{
					if (hpBot2[i] <= 0)
					{
						stateBot2[i] = 0;
						stateBot2Attack[i] = 0;
					}
				}
				if (hpBoss2 <= 0 && stateBoss2 == 1)
				{
					if (timeGame<220)
					{
						score += 500;
					}
					score += 1000;
					stateBoss2 = 0;
				}
				/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

						////////////////////////////////////////////////////////////////classBot////////////////////////////////////////////////////////
				////////////////////////////////////////////////////////botidle///////////////////////////////////////////////////////////////////////////////////////	
						/////////////////////////////bot1////////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateBot[i] == 1 && stateRunbot[i] == 0)
					{
						animation(&botTexture, &bot[i], &countbot[i], 720, 80, 80, millis, &timebot[i], 150);
					}
					if ((xBot[i]>2700&&xBot[i]<4000)|| (xBot[i] > 6700 && xBot[i] < 8000))
					{
						yBot[i] = 500;
					}
					else
					{
						yBot[i] = 615;
					}
				}

				/////////////////////////////botRun/////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateRunbot[i] == 1 && statefaceLeftBot[i] == 1)
					{
						xBot[i] -= 1;
						animation(&RunbotTexture, &bot[i], &countbot[i], 400, 80, 80, millis, &timebot[i], 150);
					}

				}
				/////////////////////////////////////////////////////////////////Bot2/////////////////////////////////////////////////////////
						//////////////////////////////bot2idle////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2[i] == 1 && stateBot2Attack[i] == 0)
					{
						animation(&bot2Texture2, &bot2[i], &countbot2[i], 96, -48, 48, millis, &timebot2[i], 150);
					}
				}
				////////////////////////////bot2attack///////////////////////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2Attack[i] == 1 && stateBot2[i] == 1 && statemagic[i] == 0)
					{
						animation(&bot2AttackTexture2, &bot2[i], &countbot2[i], 96, -48, 48, millis, &timebot2[i], 300);
						if (countbot2[i] >= 96)
						{
							stateBot2Attack[i] = 0;
							statemagic[i] = 1;
						}
					}
					if (statemagic[i] == 1)
					{
						animation(&MagicTexture2, &Magic[i], &countmagic[i], 96, -48, 16, millis, &timemagic[i], 100);
						xMagic[i] -= 2;
					}
					if (distance(xPlayer, xMagic[i], yPlayer, yMagic[i]) <= 30 && stateDown == 0 && statemagic[i] == 1)
					{
						hpPlayer -= damageMagicBot;
						playercrashBotSound.play();
						statemagic[i] = 0;
						xMagic[i] = xBot2[i];
						yMagic[i] = yBot2[i];
					}
					if (distance(xBot2[i], xMagic[i], yBot2[i], yMagic[i]) >= 1000)
					{
						statemagic[i] = 0;
						xMagic[i] = xBot2[i];
						yMagic[i] = yBot2[i];
					}

				}
				///////////////////////////////////////////////////////////////////////////////////////////////////////////////

						///////////////////////////Boss2/////////////////////////////////
				if (stateBoss2==1)
				{
					if (distance(xPlayer,xBoss2,yPlayer,yBoss2)<=700&& distance(xPlayer, xBoss2, yPlayer, yBoss2)>150&& stateAttackBoss2 == 0)
					{						
						statewalkboss2 = 1;
						stateidleboss2 = 0;
						
					}
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 150&& stateAttackBoss2 ==0)
					{
						statewalkboss2 = 0;
						stateidleboss2 = 0;
						stateAttackBoss2 = 1;
					}
					if ((stateattack1boss2==0&&statewaitattack1boss2==0)||(stateattack2boss2==0&&statewaitattack2boss2))
					{
						if (xPlayer < xBoss2)
						{
							faceRightBoss2 = 0;
						}
						if (xPlayer > xBoss2)
						{
							faceRightBoss2 = 1;
						}
					}
				}				
				/////////////////////////////////////////////////////////////////	
				if (stateidleboss2==1)
				{
					if (faceRightBoss2)
					{
						animation(&Boss2IdleTexture, &Boss2, &countidleboss2, 384, 96, 96, millis, &timeboss2, 200);
					}
					else
					{
						animation(&Boss2IdleLeftTexture, &Boss2, &countidleboss2, 384, 96, 96, millis, &timeboss2, 200);
					}
				}
				///////////////////////////////////////////////////////////////
				if (statewalkboss2==1&& stateAttackBoss2==0)
				{
					if (faceRightBoss2)
					{
						xBoss2 += 2;
						animation(&Boss2walkTexture, &Boss2, &countwalkboss2, 672, 96, 96, millis, &timeboss2, 100);
					}
					else
					{
						xBoss2 -= 2;
						animation(&Boss2walkLeftTexture, &Boss2, &countwalkboss2, 672, 96, 96, millis, &timeboss2, 100);
					}
				}
				//////////////////////////////////////////////////
				if (stateAttackBoss2==1)
				{
					if (statewaitattack1boss2 == 1)
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2WaitAttack1Texture, &Boss2, &countwaitattackboss2, 384, 96, 96, &statewaitattack1boss2, &stateattack1boss2, millis, &timeboss2, 300);
						}
						else
						{
							animationstate2(&Boss2WaitAttack1LeftTexture, &Boss2, &countwaitattackboss2, 384, 96, 96, &statewaitattack1boss2, &stateattack1boss2, millis, &timeboss2, 300);
						}	
						
					}
					if (stateattack1boss2 == 1)
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2Attack1Texture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack1boss2, &statewaitattack2boss2, millis, &timeboss2, 100);
							if (countattackboss2==192)
							{
								attackSwordSound.play();
							}

						}
						else
						{
							animationstate2(&Boss2Attack1LeftTexture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack1boss2, &statewaitattack2boss2, millis, &timeboss2, 100);
							if (countattackboss2 == 192)
							{
								attackSwordSound.play();
							}
						}
						if (stateattack1boss2 == 0)
						{
							stateAttackBoss2 = 0;
							
						}
					}
					//////////////////////////////////////////////////////////////////////////////////////////////
					if (statewaitattack2boss2 == 1 )
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2WaitAttack2Texture, &Boss2, &countwaitattackboss2, 480, 96, 96, &statewaitattack2boss2, &stateattack2boss2, millis, &timeboss2, 300);
						}
						else
						{
							animationstate2(&Boss2WaitAttack2LeftTexture, &Boss2, &countwaitattackboss2, 480, 96, 96, &statewaitattack2boss2, &stateattack2boss2, millis, &timeboss2, 300);
						}
						if (statewaitattack2boss2 == 0)
						{
							randomattack = random(1, 5);
						}
					}
					if (stateattack2boss2 == 1)
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2Attack2Texture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack2boss2, &statewaitattack1boss2, millis, &timeboss2, 100);
							if (countattackboss2 == 192)
							{
								attackSwordSound.play();
							}
						}
						else
						{
							animationstate2(&Boss2Attack2LeftTexture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack2boss2, &statewaitattack1boss2, millis, &timeboss2, 100);
							if (countattackboss2 == 192)
							{
								attackSwordSound.play();
							}
						}
						if (stateattack2boss2 == 0)
						{
							stateAttackBoss2 = 0;
							if (randomattack == 5)
							{
								statewaitattack2boss2 = 1;
								statewaitattack1boss2 = 0;
							}
						}
					}
				}				
				//////////////////////////////////////////////////damageBoss2////////////////////////////////////////////////////
				if (stateattack1boss2 == 1 )
				{
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 170)
					{
						if (faceRightBoss2)
						{
							if (xPlayer > xBoss2&&countattackboss2<=384)
							{
								
								hpPlayer -=0.6;
							}
						}
						else
						{
							if (xPlayer < xBoss2 && countattackboss2 <= 384)
							{
								hpPlayer -= 0.6;
							}
						}
					}
					
				}
				if (stateattack2boss2 == 1)
				{
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 170 && countattackboss2 >= 288)
					{
						hpPlayer -= 0.6;
					}
				}
				//printf("wait1=%d  atk1=%d wait2=%d  atk2=%d\n", statewaitattack1boss2, stateattack1boss2, statewaitattack2boss2, stateattack2boss2);
				///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				
				/////////////////////////////////////////////////playerOnObject///////////////////////////////////////////////

				for (int i = 1; i < 11; i++)
				{
					if (distance(xGround[i], xPlayer, yGround[i], yPlayer) <= 70 && yPlayer < yGround[i] && (isJumping == 0 || stateJump == 0))
					{
						checkOnground = i;
						stateJump = 0;
						yPlayerOnground = yGround[i] - 70;
						stateOnGroundUp = 1;
					}
				}
				if (distance(xGround[checkOnground], xPlayer, yGround[checkOnground], yPlayer) >= 70 || yPlayer - yPlayerOnground > 20)
				{
					stateOnGroundUp = 0;
					if (stateJump == 0 && isJumping == 0)
					{
						yPlayerOnground = 602;
					}
				}
				////////////////////////////////////////////item//////////////////////////////////////////////////////////
				
				///////////////////////////////////////////falllava//////////////////////////////////////////////////////////
				if (xPlayer>2686&&xPlayer<3920&&player.getGlobalBounds().intersects(lava1.getGlobalBounds()))
				{
					hpPlayer =0;
				}
				if (xPlayer > 6685 && xPlayer < 7920 && player.getGlobalBounds().intersects(lava2.getGlobalBounds()))
				{
					hpPlayer =0;
				}
				////////////////////////////////////////////////////torch///////////////////////////////////////////////////////
				animation(&TorchTexture,&Torch,&counttorch,32,16,32,millis,&timetorch,150);
				
				/////////////////////////////////////////////////////////////////////////////////////////////////////////
				if (stateBoss2 == 0)
				{
					if (distance(xPlayer, xGate, yPlayer, yGate) <= 40)
					{
						Stage = 4;
					}
				}
				///////////////////////////////////////Text///////////////////////////////////////////////////////////////
				std::stringstream ss;
				ss << score;
				scoreText.setString(ss.str());

				std::stringstream st;
				st << timeGame;
				timeText.setString(st.str());

				///////////////////////
				///////////////////////////////////////////////////////////////////////////////////////////////////
				if (xPlayer > 600 && xPlayer < 12570)
				{
					offSetX = xPlayer - 600;
				}

				////////////////////////////////////////////////////////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateBot[i] == 0 && stateitem[i] == 0 && randomitembot[i] <= 5)
					{
						stateitem[i] = 1;
						xItem[i] = xBot[i];
						yItem[i] = yBot[i] + 20;

					}
				}
				for (int i = 0; i < 40; i++)
				{
					if (distance(xPlayer, xItem[i], yPlayer, yItem[i]) <= 50 && stateitem[i] == 1)
					{
						if (randomitembot[i] < 2)
						{
							hpPlayer += 10;
							stateitem[i] = 2;

						}
						if (randomitembot[i] >= 2)
						{
							score += 50;
							stateitem[i] = 2;

						}
					}
					if (distance(xPlayer, xItem[i], yPlayer, yItem[i]) > 50 && distance(xPlayer, xItem[i], yPlayer, yItem[i]) < 100 && stateitem[i] == 1)
					{
						if (xItem[i] > xPlayer)
						{
							xItem[i] -= 1;
						}
						if (xItem[i] < xPlayer)
						{
							xItem[i] += 1;
						}
					}

				}

				////////////////////////////////////////////////////////////////////////////////////////////////
				animation(&lavaTexture,&lava1,&countlava,864,432,32,millis,&timelava,200);
				lava1.setPosition(2666-offSetX,600);
				animation(&lavaTexture, &lava2, &countlava, 864, 432, 32, millis, &timelava, 200);
				lava2.setPosition(6665 - offSetX, 600);
				///////////////////////////////////////////////////////////////////////////////////////////////

				shoriken.setPosition(xShoriken - offSetX, yShoriken);
				background.setPosition(-offSetX, 0);
				background2.setPosition(-offSetX, 0);
				background3.setPosition(-offSetX, 0);
				ground.setPosition(-offSetX, 510);
				player.setPosition(xPlayer - offSetX, yPlayer);
				playerattacksword.setPosition(xPlayer - offSetX, yPlayer);
				HP.setSize(sf::Vector2f(hpPlayer * 3, 30));

				window.clear();
				window.draw(background);
				window.draw(lava1);
				window.draw(lava2);
				window.draw(ground);
				for (int i=1;i<11;i++)
				{
					groundUp[i].setPosition(xGround[i]-offSetX,yGround[i]);
					window.draw(groundUp[i]);
				}

				///////item////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateitem[i] == 1)
					{
						if (randomitembot[i] <= 2)
						{
							item[i].setTexture(&heartTexture);
						}
						else
						{
							item[i].setTexture(&coinTexture);
						}
						item[i].setPosition(xItem[i] - offSetX, yItem[i]);
						window.draw(item[i]);
					}
				}

				for (int i=1;i<30;i++)
				{
					Torch.setPosition(440*i - offSetX, 200);
					window.draw(Torch);
				}
				
				
				///////////////bot1///////////////////
				for (int i = 0; i < 40; i++)
				{
					if (stateBot[i] == 1)
					{
						bot[i].setPosition(xBot[i] - offSetX, yBot[i]);
						window.draw(bot[i]);
					}
				}
				//////////////////bot2///////////////
				for (int i = 0; i < 10; i++)
				{
					if (stateBot2[i] == 1)
					{
						bot2[i].setPosition(xBot2[i] - offSetX, yBot2[i]);
						window.draw(bot2[i]);
					}
				}
				if (stateBoss2 == 1)
				{
					Boss2.setPosition(xBoss2 - offSetX, yBoss2);
					window.draw(Boss2);
				}
				if (stateShoriken == 1)
				{
					window.draw(shoriken);
				}
				if (stateAttack1 == 1 || (stateAttack2 == 1 && stateDown == 0))
				{
					window.draw(playerattacksword);
				}
				else
				{
					window.draw(player);
				}
				for (int i = 0; i < 10; i++)
				{
					if (statemagic[i] == 1)
					{
						Magic[i].setPosition(xMagic[i] - offSetX, yMagic[i]);
						window.draw(Magic[i]);
					}
				}
				///////////////////gate/////////////////////
				if (stateBoss2 == 0)
				{
					Gate.setPosition(xGate - offSetX, yGate);
					window.draw(Gate);
				}
				window.draw(timeText);
				window.draw(STime);
				window.draw(scoreText);
				window.draw(SScoreText);
				window.draw(Hpblack);
				window.draw(HP);
				window.draw(HPbar);
				window.display();
			}
			if (Stage == 4)
			{
				background.setTexture(&backgroundTexture3);
				background2.setTexture(&background2Texture3);
				background3.setTexture(&background3Texture3);
				xPlayer = 10000;
				yPlayer = 602;
				offSetX = 0;
				Stage = 5;

				stateBoss = 1;
				stateAttacckBoss = 0;
				stateRunBoss = 0;
				countboss = 0;
				timeboss = 0;
				xBoss = 12500;
				yBoss = 550;
				faceRightBoss = 0;
				hpBoss = 9999;
				makeObject(&BossTexture, &Boss, 300, 300, 150, 150);
				Boss.setTexture(&BossTexture);
				Boss.setTextureRect(sf::IntRect(200, 0, -200, 200));

				stateBoss2 = 0;
				stateAttacckBoss2 = 0;
				stateRunBoss2 = 0;
				countidleboss2 = 0;
				countwalkboss2 = 0;
				countattackboss2 = 0;
				countwaitattackboss2 = 0;
				stateAttackBoss2 = 0;
				statewaitattack1boss2 = 1;
				statewaitattack2boss2 = 0;
				stateattack1boss2 = 0;
				stateattack2boss2 = 0;
				stateidleboss2 = 1;
				statewalkboss2 = 0;
				timeboss2 = 0;
				xBoss2 = 12500;
				yBoss2 = 620;
				faceRightBoss2 = 0;
				hpBoss2 = 15000;
				for (int i = 0; i < 40; i++)
				{					
					stateBot[i] = 0;
				}
				/////////////////////////////////////////////////////////////re-bot2////////////////////////////////////////////////////////////////////
				for (int i = 0; i < 10; i++)
				{
					stateBot2[i] = 0;
					statemagic[i] = 0;
				}
				/////////////////////////////////////////////////Boss2////////////////////////////////////////////
			}
			//////////////////////////////////////////////////////stage3//////////////////////////////////////////////////////////////////
			if (Stage==5)
			{
				////////////////////////////endgame//////////////////////////////
				if (stateBoss == 2 && stateBoss2 == 2)
				{
					if (WinState == false)
					{
						if (timeGame < 500)
						{
							score = (500 - timeGame) * 50;
						}
						WinState = true;
						music.pause();
						PlayState = false;
					}

				}
				///////////////////////////////////////////////////crashbotsword///////////////////////////////////////////////
				if (stateAttack1 == 1)
				{
					if (faceRight == 1)
					{
						/////////////////boos//////////////////////////////
						if (stateBoss == 1)
						{
							if (distance(xBoss, xPlayer, yBoss, yPlayer) <= 120 && xPlayer < xBoss && countattack >= 128)
							{
								hpBoss -= 5;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						/////////////////boos2//////////////////////////////
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xPlayer, yBoss2, yPlayer) <= 150 && xPlayer < xBoss2 && countattack >= 128)
							{
								hpBoss2 -= 5;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 100 && xPlayer < xBot[i] && countattack >= 128)
								{
									hpBot[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
						/////////////////////////bot2//////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 100 && xPlayer < xBot2[i] && countattack >= 128)
								{
									hpBot2[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
					}
					////////////////////////////////////////////////////////////////////////////////////////////
					if (faceRight == 0)
					{
						////////////////////////////boss//////////////////////
						if (stateBoss == 1)
						{
							if (distance(xBoss, xPlayer, yBoss, yPlayer) <= 120 && xPlayer > xBoss && countattack >= 128)
							{
								hpBoss -= 10;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						////////////////////////////boss2//////////////////////
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xPlayer, yBoss2, yPlayer) <= 150 && xPlayer > xBoss2 && countattack >= 128)
							{
								hpBoss2 -= 10;
								if (countattack == 192)
								{
									attackswordSoundCrash.play();
								}
							}
						}
						//////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xPlayer, yBot[i], yPlayer) <= 100 && xPlayer > xBot[i] && countattack >= 128)
								{
									hpBot[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
						/////////////////////////////bot2/////////////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xPlayer, yBot2[i], yPlayer) <= 100 && xPlayer > xBot2[i] && countattack >= 128)
								{
									hpBot2[i] -= 100;
									score += 20;
									attackswordSoundCrash.play();
								}
							}

						}
					}
				}
				//////////////////////////////////crashbotshoriken///////////////////////////////////////////////////////
				if (stateShoriken == 1)
				{
					//////////////////////////////////boss///////////////////////////
					if (faceRight == 1)
					{
						if (stateBoss == 1)
						{
							if (distance(xBoss, xShoriken, yBoss, yShoriken) <= 70 && xShoriken < xBoss)
							{
								hpBoss -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}
						//////////////////////////////////boss2///////////////////////////
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xShoriken, yBoss2, yShoriken) <= 70 && xShoriken < xBoss2)
							{
								hpBoss2 -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}
						//////////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xShoriken, yBot[i], yShoriken) <= 40 && xShoriken < xBot[i])
								{
									hpBot[i] -= 50;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
						//////////////////////////////////bot2///////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xShoriken, yBot2[i], yShoriken) <= 40 && xShoriken < xBot2[i])
								{
									hpBot2[i] -= 40;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
					}
					//////////////////////////////////////////////////////////////////////////////////////////////////////////
					if (faceRight == 0)
					{
						//////////////////////////////////boss//////////////////////////////////////
						if (stateBoss == 1)
						{
							if (distance(xBoss, xShoriken, yBoss, yShoriken) <= 70 && xShoriken > xBoss)
							{
								hpBoss -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}
						//////////////////////////////////boss2///////////////////////////
						if (stateBoss2 == 1)
						{
							if (distance(xBoss2, xShoriken, yBoss2, yShoriken) <= 70 && xShoriken > xBoss2)
							{
								hpBoss2 -= 50;
								stateShoriken = 0;
								xShoriken = xPlayer;
								attackShorikenSoundCrash.play();
							}
						}
						//////////////////////////////////bot1///////////////////////////
						for (int i = 0; i < 40; i++)
						{
							if (stateBot[i] == 1)
							{
								if (distance(xBot[i], xShoriken, yBot[i], yShoriken) <= 40 && xShoriken > xBot[i])
								{
									hpBot[i] -= 40;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
						//////////////////////////////////bot2///////////////////////////
						for (int i = 0; i < 10; i++)
						{
							if (stateBot2[i] == 1)
							{
								if (distance(xBot2[i], xShoriken, yBot2[i], yShoriken) <= 40 && xShoriken > xBot2[i])
								{
									hpBot2[i] -= 40;
									if (hpBot[i] <= 0)
									{
										score += 15;
									}
									stateShoriken = 0;
									xShoriken = xPlayer;
									attackShorikenSoundCrash.play();
								}
							}

						}
					}


				}
				if (hpBoss <= 0 && stateBoss == 1)
				{
					score += 1000;
					stateBoss = 2;
				}
				if (hpBoss2 <= 0 && stateBoss2 == 1)
				{
					score += 1000;
					stateBoss2 = 2;
				}				
				if (stateBoss == 1)
				{
					if (stateAttacckBoss == 0)
					{
						if (xPlayer < xBoss)
						{
							faceRightBoss = 0;
						}
						if (xPlayer > xBoss)
						{
							faceRightBoss = 1;
						}
					}
					if (stateRunBoss == 0 && distance(xBoss, xPlayer, yBoss, yPlayer) <= 700 && distance(xBoss, xPlayer, yBoss, yPlayer) >= 150 && xBoss > 11700)
					{
						stateRunBoss = 1;
					}
					if (distance(xBoss, xPlayer, yBoss, yPlayer) < 150)
					{
						stateRunBoss = 0;
						stateAttacckBoss = 1;
					}
					if (xBoss <= 11700 || xPlayer <= 11600)
					{
						stateRunBoss = 0;
					}
					if (stateRunBoss == 0 && xBoss < 12500 && stateAttacckBoss == 0)
					{
						xBoss += 1;
						hpBoss += 5;
					}

				}
				/////////////////////////////////////Boss//////////////////////////////////////////////////
				if (stateRunBoss == 1 && stateAttacckBoss == 0)
				{
					if (faceRightBoss == 0)
					{
						xBoss -= 1;
						Boss.setTexture(&BossTexture);
						Boss.setTextureRect(sf::IntRect(200, 0, -200, 200));
					}
					if (faceRightBoss == 1)
					{
						xBoss += 1;
						Boss.setTexture(&BossTexture);
						Boss.setTextureRect(sf::IntRect(200, 0, 200, 200));
					}
				}
				if (stateAttacckBoss == 1)
				{
					if (faceRightBoss == 0)
					{
						animationstate(&BossTexture, &Boss, &countboss, 1800, -200, 200, &stateAttacckBoss, millis, &timeboss, 250);
						if (countboss == 1400)
						{
							thunderSound.play();
						}
					}
					else
					{
						animationstate(&BossTexture, &Boss, &countboss, 1800, 200, 200, &stateAttacckBoss, millis, &timeboss, 250);
						if (countboss == 1400)
						{
							thunderSound.play();
						}
					}
				}
				/////////////////////////////////////////////////crash///////////////////////////////////
					////////////////////////////////playercrashBot////////////////////////////////
				if (stateBoss == 1)
				{
					if (distance(xBoss, xPlayer, yBoss, yPlayer) <= 60)
					{
						hpPlayer -= 20;
						if (faceRight == 1)
						{
							xPlayer -= 20;
							playercrashBotSound.play();
						}
						else
						{
							xPlayer += 20;
							playercrashBotSound.play();
						}
					}
					/////////////////////////////////////bossattack////////////////////////////////////////
					if (stateAttacckBoss == 1 && countboss >= 1800 && distance(xBoss, xPlayer, yBoss, yPlayer) <= 150)
					{
						if (faceRightBoss == 0 && xPlayer < xBoss)
						{
							hpPlayer -= 1;
						}
						if (faceRightBoss == 1 && xPlayer > xBoss)
						{
							hpPlayer -= 1;
						}
					}
				}
				if (stateBoss == 1)
				{
					if (hpBoss<=3000&&stateBoss2==0)
					{
						stateBoss2 = 1;
						xBoss2 = 13000;
					}
				}
				
				//////////////////////////////////////////////////////playercrashboss2////////////////////////////////////////////////////
				if (stateBoss2==1)
				{
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 70)
					{
						if (faceRight)
						{
							xPlayer -= 20;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
						else
						{
							xPlayer += 20;
							hpPlayer -= 20;
							playercrashBotSound.play();
						}
					}
				}
				
				//////////////////////////////////////////////////////////////////////////
				///////////////////////////Boss2/////////////////////////////////

						///////////////////////////Boss2/////////////////////////////////
				if (stateBoss2 == 1)
				{
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 700 && distance(xPlayer, xBoss2, yPlayer, yBoss2) > 150 && stateAttackBoss2 == 0)
					{
						statewalkboss2 = 1;
						stateidleboss2 = 0;

					}
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 150 && stateAttackBoss2 == 0)
					{
						statewalkboss2 = 0;
						stateidleboss2 = 0;
						stateAttackBoss2 = 1;
					}
					if ((stateattack1boss2 == 0 && statewaitattack1boss2 == 0) || (stateattack2boss2 == 0 && statewaitattack2boss2))
					{
						if (xPlayer < xBoss2)
						{
							faceRightBoss2 = 0;
						}
						if (xPlayer > xBoss2)
						{
							faceRightBoss2 = 1;
						}
					}
				}
				/////////////////////////////////////////////////////////////////	
				if (stateidleboss2 == 1)
				{
					if (faceRightBoss2)
					{
						animation(&Boss2IdleTexture, &Boss2, &countidleboss2, 384, 96, 96, millis, &timeboss2, 200);
					}
					else
					{
						animation(&Boss2IdleLeftTexture, &Boss2, &countidleboss2, 384, 96, 96, millis, &timeboss2, 200);
					}
				}
				///////////////////////////////////////////////////////////////
				if (statewalkboss2 == 1 && stateAttackBoss2 == 0)
				{
					if (faceRightBoss2)
					{
						xBoss2 += 2;
						animation(&Boss2walkTexture, &Boss2, &countwalkboss2, 672, 96, 96, millis, &timeboss2, 100);
					}
					else
					{
						xBoss2 -= 2;
						animation(&Boss2walkLeftTexture, &Boss2, &countwalkboss2, 672, 96, 96, millis, &timeboss2, 100);
					}
				}
				//////////////////////////////////////////////////
				if (stateAttackBoss2 == 1)
				{
					if (statewaitattack1boss2 == 1)
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2WaitAttack1Texture, &Boss2, &countwaitattackboss2, 384, 96, 96, &statewaitattack1boss2, &stateattack1boss2, millis, &timeboss2, 250);
						}
						else
						{
							animationstate2(&Boss2WaitAttack1LeftTexture, &Boss2, &countwaitattackboss2, 384, 96, 96, &statewaitattack1boss2, &stateattack1boss2, millis, &timeboss2, 300);
						}

					}
					if (stateattack1boss2 == 1)
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2Attack1Texture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack1boss2, &statewaitattack2boss2, millis, &timeboss2, 100);
							if (countattackboss2 == 192)
							{
								attackSwordSound.play();
							}

						}
						else
						{
							animationstate2(&Boss2Attack1LeftTexture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack1boss2, &statewaitattack2boss2, millis, &timeboss2, 100);
							if (countattackboss2 == 192)
							{
								attackSwordSound.play();
							}
						}
						if (stateattack1boss2 == 0)
						{
							stateAttackBoss2 = 0;

						}
					}
					//////////////////////////////////////////////////////////////////////////////////////////////
					if (statewaitattack2boss2 == 1)
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2WaitAttack2Texture, &Boss2, &countwaitattackboss2, 480, 96, 96, &statewaitattack2boss2, &stateattack2boss2, millis, &timeboss2, 250);
						}
						else
						{
							animationstate2(&Boss2WaitAttack2LeftTexture, &Boss2, &countwaitattackboss2, 480, 96, 96, &statewaitattack2boss2, &stateattack2boss2, millis, &timeboss2, 250);
						}
						if (statewaitattack2boss2 == 0)
						{
							randomattack = random(1, 5);
						}
					}
					if (stateattack2boss2 == 1)
					{
						if (faceRightBoss2)
						{
							animationstate2(&Boss2Attack2Texture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack2boss2, &statewaitattack1boss2, millis, &timeboss2, 100);
							if (countattackboss2 == 192)
							{
								attackSwordSound.play();
							}
						}
						else
						{
							animationstate2(&Boss2Attack2LeftTexture, &Boss2, &countattackboss2, 768, 96, 96, &stateattack2boss2, &statewaitattack1boss2, millis, &timeboss2, 100);
							if (countattackboss2 == 192)
							{
								attackSwordSound.play();
							}
						}
						if (stateattack2boss2 == 0)
						{
							stateAttackBoss2 = 0;
							if (randomattack == 5)
							{
								statewaitattack2boss2 = 1;
								statewaitattack1boss2 = 0;
							}
						}
					}
				}
				//////////////////////////////////////////////////damageBoss2////////////////////////////////////////////////////
				if (stateattack1boss2 == 1)
				{
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 170)
					{
						if (faceRightBoss2)
						{
							if (xPlayer > xBoss2 && countattackboss2 <= 384)
							{
								hpPlayer -= 0.6;
							}
						}
						else
						{
							if (xPlayer < xBoss2 && countattackboss2 <= 384)
							{
								hpPlayer -= 0.6;
							}
						}
					}

				}
				if (stateattack2boss2 == 1)
				{
					if (distance(xPlayer, xBoss2, yPlayer, yBoss2) <= 170 && countattackboss2 >= 288)
					{
						hpPlayer -= 0.6;
					}
				}
				////////////////////////////////////////////item//////////////////////////////////////////////////////////

				///////////////////////////////////////Text///////////////////////////////////////////////////////////////
				std::stringstream ss;
				ss << score;
				scoreText.setString(ss.str());

				std::stringstream st;
				st << timeGame;
				timeText.setString(st.str());

				///////////////////////
				///////////////////////////////////////////////////////////////////////////////////////////////////
				if (xPlayer > 600 && xPlayer < 12570)
				{
					offSetX = xPlayer - 600;
				}
				////////////////////////////////////////////////////////////////////////////////////////////////
				shoriken.setPosition(xShoriken - offSetX, yShoriken);
				background.setPosition(-offSetX, 0);
				background2.setPosition(-offSetX, 100);
				background3.setPosition(-offSetX, 80);
				ground.setPosition(-offSetX, 510);
				player.setPosition(xPlayer - offSetX, yPlayer);
				playerattacksword.setPosition(xPlayer - offSetX, yPlayer);
				HP.setSize(sf::Vector2f(hpPlayer * 3, 30));

				window.clear();
				window.draw(background);
				if (stateBoss2==0)
				{
					window.draw(background2);
					window.draw(background3);
				}
				
				window.draw(ground);
				if (stateBoss2==1)
				{
					background.setTexture(&backgroundTexture2);
					animation(&TorchTexture, &Torch, &counttorch, 32, 16, 32, millis, &timetorch, 150);
					for (int i = 1; i < 30; i++)
					{
						Torch.setPosition(440 * i - offSetX, 200);
						window.draw(Torch);
					}
				}
				
				
				if (stateBoss == 1)
				{
					Boss.setPosition(xBoss - offSetX, yBoss);
					window.draw(Boss);
				}
				if (stateBoss2 == 1)
				{
					Boss2.setPosition(xBoss2 - offSetX, yBoss2);
					window.draw(Boss2);
				}
				if (stateShoriken == 1)
				{
					window.draw(shoriken);
				}
				if (stateAttack1 == 1 || (stateAttack2 == 1 && stateDown == 0))
				{
					window.draw(playerattacksword);
				}
				else
				{
					window.draw(player);
				}
				window.draw(timeText);
				window.draw(STime);
				window.draw(scoreText);
				window.draw(SScoreText);
				window.draw(Hpblack);
				window.draw(HP);
				window.draw(HPbar);
				window.display();
			}
			///////////////////////////////////////////////////////////////////////////////////////////////////////
			if (hpPlayer <= 0)
			{
				hpPlayer = 0;
				music.pause();
				GameOverState = true;
				PlayState = false;
			}
			if (hpPlayer > 100)
			{
				hpPlayer = 100;
			}				
			}
			////////////////////////////pause/////////////////////////////////////
			else
			{
			///////////////////////////////resume/////////////////////////
				if (Mode == 1)
				{
					Select.setPosition(580, 210);
					if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
					{
						EnterSound.play();
						delay = millis;
						timeGame = timesec.restart().asSeconds();
						music.play();
						PauseState = 0;
					}
				}
				/////////////////////////mainmenu///////////////////////////////
				if (Mode == 2 )
				{
					Select.setPosition(530, 310);
					if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)) && millis - delay >= 300)
					{
						EnterSound.play();
						music.openFromFile("resources/sounds/musicmenu.ogg");
						music.play();
						delay = millis;
						PlayState = false;
						PauseState = false;
						MenuState = true;
					}										
				}
				////////////////////////exit////////////////////////////////
				if (Mode == 3)
				{
					Select.setPosition(600, 410);
					if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Enter) || sf::Joystick::isButtonPressed(0, 0)))
					{
						window.close();
					}

				}
				/////////////////////////////////////////////////////////////
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Down)|| sf::Joystick::getAxisPosition(0, sf::Joystick::Y)>30) && millis - delay >= 300)
				{
					delay = millis;
					Mode += 1;
					SelectSound.play();
					if (Mode > 3)
					{
						Mode = 1;
					}
				}
				if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Up)|| sf::Joystick::getAxisPosition(0, sf::Joystick::Y)<-30) && millis - delay >= 300)
				{
					delay = millis;
					Mode -= 1;
					SelectSound.play();
					if (Mode < 1)
					{
						Mode = 3;
					}
				}
				/////////////////////////////////////////////////////////////////////
				if (sf::Keyboard::isKeyPressed(sf::Keyboard::Escape)&&millis-delay>=300)
				{
					delay = millis;
					PauseState = 0;
				}
				ExitText.setPosition(630, 400);
				window.clear();
				window.draw(ResumeText);
				window.draw(MainMenuText);
				window.draw(ExitText);
				window.draw(Select);
				window.display();
			}

		}
		///////////////////////////////////////////////////////////////////////////////////////////////
		if (WinState==true)
		{
			if (sf::Keyboard::isKeyPressed(sf::Keyboard::Enter)  && millis - delay >= 300 && playerName.length() > 0)
			{
				EnterSound.play();
				music.openFromFile("resources/sounds/musicmenu.ogg");
				music.play();
				delay = millis;

				WinState = false;
				MenuState = true;
				pairScoreName.push_back(make_pair(score, playerName));
				sort(pairScoreName.begin(), pairScoreName.end(), sortinrev);

				ofstream highscoreWriter;
				highscoreWriter.open("HighscoreFile.txt");
				for (int i = 0; i < 5; i++)//only write top 5 score
				{
					highscoreWriter << pairScoreName[i].first << "," << pairScoreName[i].second << "\n";
				}
				highscoreWriter.close();

				Ifile.open("HighscoreFile.txt");
				pairScoreName.clear();
				do
				{
					Ifile >> line;
					string highscoreScore = line.substr(0, line.find(','));
					string highscoreName = line.substr(line.find(',') + 1, line.length());
					pairScoreName.push_back(make_pair(atoi(highscoreScore.c_str()), highscoreName));
				} while (Ifile.good());//Read until EOF
				Ifile.close();
				for (size_t i = 0; i < 5; i++)
				{
					highscoreNameText[i].setString(pairScoreName[i].second);
					highscoreScoreText[i].setString(to_string(pairScoreName[i].first));
				}
				playerName = "";
				playerNametext.setString(playerName);
				cursor.setPosition(480, 450);
				playerName = "";
				playerNametext.setString(playerName);
				cursor.setPosition(480, 450);
			}
			if (event.type == sf::Event::EventType::TextEntered)
			{

				if (last_char != event.text.unicode && event.text.unicode == 8 &&
					playerName.length() > 0) // delete
				{

					last_char = event.text.unicode;
					playerName.erase(playerName.length() - 1);
					playerNametext.setString(playerName);
					cursor.setPosition(480.0f + playerNametext.getGlobalBounds().width + 5, 450.0f);

				}
				else if (playerName.length() < 12 && last_char != event.text.unicode &&
					(event.text.unicode >= 'a' && event.text.unicode <= 'z' ||
						event.text.unicode >= 'A' && event.text.unicode <= 'Z' ||
						event.text.unicode >= '0' && event.text.unicode <= '9'))
				{
					last_char = event.text.unicode;

					playerName += event.text.unicode;

					playerNametext.setString(playerName);

					cursor.setPosition(480.0f + playerNametext.getGlobalBounds().width + 5, 450.0f);
				}

			}

			if (event.type == sf::Event::EventType::KeyReleased && last_char != ' ')
			{
				last_char = ' ';
			}
			scoreText.setPosition(700, 320);
			window.clear();
			window.draw(object);
			totalTime += clock.restart().asSeconds();
			if (totalTime >= 0.5)
			{
				totalTime = 0;
				state = !state;
			}
			if (state == true)
			{
				window.draw(cursor);
			}
			window.draw(WinText);
			window.draw(scoreText);
			window.draw(YourScoreText);
			window.draw(EnterYourNameText);
			window.draw(playerNametext);
			window.display();
		}
		if (GameOverState==true)
		{
			if (sf::Keyboard::isKeyPressed(sf::Keyboard::Enter)&& millis - delay >= 300&&playerName.length() > 0)
			{
				EnterSound.play();
				music.openFromFile("resources/sounds/musicmenu.ogg");
				music.play();
				delay = millis;
				GameOverState = false;
				MenuState = true;
				pairScoreName.push_back(make_pair(score, playerName));
				sort(pairScoreName.begin(), pairScoreName.end(), sortinrev);

				ofstream highscoreWriter;
				highscoreWriter.open("HighscoreFile.txt");
				for (int i = 0; i < 5; i++)//only write top 5 score
				{
					highscoreWriter << pairScoreName[i].first << "," << pairScoreName[i].second << "\n";
				}
				highscoreWriter.close();

				Ifile.open("HighscoreFile.txt");
				pairScoreName.clear();
				do
				{
					Ifile >> line;
					string highscoreScore = line.substr(0, line.find(','));
					string highscoreName = line.substr(line.find(',') + 1, line.length());
					pairScoreName.push_back(make_pair(atoi(highscoreScore.c_str()), highscoreName));
				} while (Ifile.good());//Read until EOF
				Ifile.close();
				for (size_t i = 0; i < 5; i++)
				{
					highscoreNameText[i].setString(pairScoreName[i].second);
					highscoreScoreText[i].setString(to_string(pairScoreName[i].first));
				}
				playerName ="";
				playerNametext.setString(playerName);
				cursor.setPosition(480,450);
			}
			/////////////////////////////////////////////////
			if (event.type == sf::Event::EventType::TextEntered)
			{
				if (last_char != event.text.unicode && event.text.unicode == 8 &&
					playerName.length() > 0) // delete
				{
					last_char = event.text.unicode;
					playerName.erase(playerName.length() - 1);
					playerNametext.setString(playerName);
					cursor.setPosition(480.0f + playerNametext.getGlobalBounds().width + 5, 450.0f);

				}
				else if (playerName.length() < 12 &&last_char != event.text.unicode &&
					(event.text.unicode >= 'a' && event.text.unicode <= 'z' ||
						event.text.unicode >= 'A' && event.text.unicode <= 'Z' ||
						event.text.unicode >= '0' && event.text.unicode <= '9'))
				{
					last_char = event.text.unicode;

					playerName += event.text.unicode;

					playerNametext.setString(playerName);

					cursor.setPosition(480.0f + playerNametext.getGlobalBounds().width + 5, 450.0f);
				}

			}

			if (event.type == sf::Event::EventType::KeyReleased && last_char != ' ')
			{
				last_char = ' ';
			}
			scoreText.setPosition(700,320);
			window.clear();
			window.draw(object);
			totalTime += clock.restart().asSeconds();
			if (totalTime >= 0.5)
			{
				totalTime = 0;
				state = !state;
			}
			if (state == true)
			{
				window.draw(cursor);
			}
			window.draw(GameoverText);
			window.draw(scoreText);
			window.draw(YourScoreText);
			window.draw(EnterYourNameText);
			window.draw(playerNametext);
			window.display();
		}
	}
	return 0;
}


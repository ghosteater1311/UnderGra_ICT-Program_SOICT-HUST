#include <gui/screen2_screen/Screen2View.hpp>
#include "cmsis_os.h"

extern osMessageQueueId_t Queue1Handle;

Screen2View::Screen2View()
{
	tickCount = 0;
}

void Screen2View::setupScreen()
{
	localImageX = presenter->GetImageX();
    Screen2ViewBase::setupScreen();
    image1.setX(localImageX);
    lamb.setX(14);
    lamb.setY(0);
}

void Screen2View::tearDownScreen()
{
    Screen2ViewBase::tearDownScreen();
    presenter->UpdateImageX(localImageX);
}

extern osMessageQueueId_t Queue1Handle;
void Screen2View::handleTickEvent()
{
	Screen2ViewBase::handleTickEvent();

	tickCount++;
	switch (tickCount % 10)
	{
	case 0:
		track0.setVisible(true);
		track4.setVisible(false);
		break;
	case 2:
		track1.setVisible(true);
		track0.setVisible(false);
		break;
	case 4:
		track2.setVisible(true);
		track1.setVisible(false);
		break;
	case 6:
		track3.setVisible(true);
		track2.setVisible(false);
		break;
	case 8:
		track4.setVisible(true);
		track3.setVisible(false);
		break;
	case 1:
		track0.setVisible(true);
		track4.setVisible(false);
		break;
	case 3:
		track1.setVisible(true);
		track0.setVisible(false);
		break;
	case 5:
		track2.setVisible(true);
		track1.setVisible(false);
		break;
	case 7:
		track3.setVisible(true);
		track2.setVisible(false);
		break;
	case 9:
		track4.setVisible(true);
		track3.setVisible(false);
		break;
	default:
		break;
	}

	lamb.setY(tickCount*2%320);
	lamb.setX(tickCount*2/320%4*60+15);

	uint8_t res = 0;
	uint32_t count = osMessageQueueGetCount(Queue1Handle);

	if (count > 0) {
		osMessageQueueGet(Queue1Handle, &res, NULL, osWaitForever);
		if (res == 'L') {
			int16_t x = image1.getX();
			x -= 3;
			if (x < 0) {
				x = 0;
			}
			image1.setX(x);
		} else if (res == 'R') {
			int16_t x = image1.getX();
			x += 3;
			if (x > 180) {
				x = 180;
			}
			image1.setX(x);
		}
	}

	invalidate();
}

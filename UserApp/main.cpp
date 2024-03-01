#include "common_inc.h"
#include <math.h>

MPU6050 mpu6050(&hi2c2);
SSD1306 oled(&hi2c1);



osThreadId_t oledTaskHandle;
void ThreadOledUpdate(void *argument)
{
	int points[8][2]={
			{	103	,	15	},
			{	72	,	9	},
			{	72	,	55	},
			{	103	,	49	},
			{	84	,	21	},
			{	61	,	18	},
			{	61	,	46	},
			{	84	,	43	},

	};

	float origi_points[8][3]={
			//x-y-z//
			{-1,1,1},
			{1,1,1},
			{1,-1,1},
			{-1,-1,1},
			{-1,1,-1},
			{1,1,-1},
			{1,-1,-1},
			{-1,-1,-1}
	};
	double rotated_3dpoint[8][3];
	//double rotationxy[8][3];
	float z_offset = -4.0;
	float cube_size = 60.0;
	double roty;
	double rotx;
	double rotz;

	for(;;)
	{
		mpu6050.Update(true);
		oled.clearBuffer();
		oled.setFont(u8g2_font_5x7_tr);
		oled.setCursor(0, 6);
		oled.printf("GX: %.2f",mpu6050.data.ax);
		oled.setCursor(0, 13);
		oled.printf("GY: %.2f",mpu6050.data.ay);
		oled.setCursor(0, 19);
		oled.printf("GZ: %.2f",mpu6050.data.az);
		roty = mpu6050.data.ay;
		rotx = mpu6050.data.ax;
		rotz = mpu6050.data.az;

		double Mrotx[3][3] = {
				{1, 	0 , 		0},
				{0, cos(rotx), -sin(rotx)},
				{0, sin(rotx), cos(rotx)}

		};
		double Mroty[3][3] = {
				{cos(roty),  0    , sin(roty)},
				{     0,     1,   	    0    },
				{-sin(roty), 0    , cos(roty)}

		};
		double Mrotz[3][3] = {
				{cos(rotz), -sin(rotz) ,    0   },
				{sin(rotz), cos(rotz) ,   	0	},
				{	 0,     	0    ,  	1   }
		};


		oled.setCursor(0, 25);
		oled.printf("&:%.2f",rotx);


		for (int i=0;i<8;i++)
		{
			//rotacion en y// x - z
			//rotated_3dpoint[i][0] = origi_points[i][0]*cos(roty) - origi_points[i][2]*sin(roty);
			//rotated_3dpoint[i][1] = origi_points[i][1];
			//rotated_3dpoint[i][2] = origi_points[i][0]*sin(roty) + origi_points[i][2]*cos(roty)+z_offset;

			//rotacion en x// y -z
			//rotated_3dpoint[i][0] = origi_points[i][0];
			//rotated_3dpoint[i][1] = origi_points[i][1]*cos(rotx) - origi_points[i][2]*sin(rotx);
			//rotated_3dpoint[i][2] = origi_points[i][1]*sin(rotx) + origi_points[i][2]*cos(rotx)+z_offset;

			//rotacion en z// x - y
			//rotated_3dpoint[i][0] = origi_points[i][0]*cos(rotz) - origi_points[i][1]*sin(rotz);
			//rotated_3dpoint[i][1] = origi_points[i][0]*sin(rotz) + origi_points[i][1]*cos(rotz);
			//rotated_3dpoint[i][2] = origi_points[i][2]+ z_offset;

			rotated_3dpoint[i][0] = origi_points[i][0]*cos(roty) + origi_points[i][2]*sin(roty);
			rotated_3dpoint[i][1] = origi_points[i][0]*((-cos(rotx+roty)+cos(rotx-roty))/2)+origi_points[i][1]*cos(rotx)+origi_points[i][2]*((-sin(rotx+roty)-sin(rotx-roty))/2);
			rotated_3dpoint[i][2] = (origi_points[i][0]*((-sin(rotx+roty)+sin(rotx-roty))/2)+origi_points[i][1]*sin(rotx)+origi_points[i][2]*((cos(rotx+roty)+cos(rotx-roty))/2))+z_offset;

			points[i][0]= round(80+rotated_3dpoint[i][0]/rotated_3dpoint[i][2]*cube_size);
			points[i][1] = round(32+rotated_3dpoint[i][1]/rotated_3dpoint[i][2]*cube_size);
		}

		//oled.drawLine(58, 10, 102,10);
		//oled.drawLine(58,10,58,54);
		//oled.drawLine(102,10,102,54);
		//oled.drawLine(102,54,58,54);
		oled.drawLine(points[0][0], points[0][1], points[1][0], points[1][1]);
		oled.drawLine(points[1][0], points[1][1], points[2][0], points[2][1]);
		oled.drawLine(points[2][0], points[2][1], points[3][0], points[3][1]);
		oled.drawLine(points[3][0], points[3][1], points[0][0], points[0][1]);

		oled.drawLine(points[4][0], points[4][1], points[5][0], points[5][1]);
		oled.drawLine(points[5][0], points[5][1], points[6][0], points[6][1]);
		oled.drawLine(points[6][0], points[6][1], points[7][0], points[7][1]);
		oled.drawLine(points[7][0], points[7][1], points[4][0], points[4][1]);

		oled.drawLine(points[0][0], points[0][1], points[4][0], points[4][1]);
		oled.drawLine(points[1][0], points[1][1], points[5][0], points[5][1]);
		oled.drawLine(points[2][0], points[2][1], points[6][0], points[6][1]);
		oled.drawLine(points[3][0], points[3][1], points[7][0], points[7][1]);


		oled.sendBuffer();
	}
}



void Main(void)
{

    do
    {
        mpu6050.Init();
        osDelay(100);
    } while (!mpu6050.testConnection());
    mpu6050.InitFilter(200, 100, 50);
    oled.Init();
	//int16_t ax;
	//int16_t ay;
	//int16_t az;
	//int16_t gx;
	//int16_t gy;
	//int16_t gz;
	//for (;;)
	//{
		//mpu6050.getMotion6(&ax, &ay, &az, &gx, &gy, &gz);
		//mpu6050.Update(true);
		//oled.clearBuffer();
		//oled.setFont(u8g2_font_5x8_tr);
		//oled.setCursor(0, 10);
		//oled.printf("GX: %.3f/ %.3f/ %.3f",mpu6050.data.gx,mpu6050.data.gy,mpu6050.data.gz);
		//oled.setCursor(0, 30);
		//oled.printf("GA: %.3f/%.3f/%.3f",mpu6050.data.ax,mpu6050.data.ay,mpu6050.data.az);
		//oled.sendBuffer();
    const osThreadAttr_t oledTask_attributes = {
      .name = "oledTask",
      .stack_size = 2000,
      .priority = (osPriority_t) osPriorityRealtime,
    };
    oledTaskHandle = osThreadNew(ThreadOledUpdate, nullptr, &oledTask_attributes);
}





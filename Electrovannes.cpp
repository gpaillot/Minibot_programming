/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include <stdio.h>
#include <stdlib.h>
#include <cstdlib>
#include <iostream>
#include <wiringPiSPI.h>
#include <pigpio.h>
#include <bitset>
#include <ctime>
#include <math.h>
#include <sys/time.h>
#include "Odometer.h"
#include "MyMCP2515.h"
#include "MyDE0Nano.h"
#include "tourelle.h"
#include "globals.h"
#include "Motors.h"
#include "Electrovannes.h"

#define PI 3.141592653

MyVannes::MyVannes(MyMCP2515 *myCan, int address)
{
    this_can = myCan;
    this_address = address;// 1 for the right motor, 2 for the left motor

}
MyVannes::~MyVannes()
{

}

void MyVannes::setLed(bool activate){
    this_can->doInit();
    time_sleep(0.15);
    if(activate)
    {
        makeData(data,GPLAT+offset,mask_led_vanne,mask_led_vanne,0x00,true);
        this_can->doSendMsg(this_address,data,3,0x00);
        printf("Led on \n");
    }
    else
    {
        makeData(data,GPLAT+offset,mask_led_vanne,0x00,0x00,true);
        this_can->doSendMsg(this_address,data,3,0x00);
        printf("Led off \n");
    }
}

void MyVannes::setVanne(int vanne, int value){
    this_can->doInit();// because WTF
    time_sleep(0.1);

    switch(vanne) {
        case 1:
            makeData(data,GPLAT+offset,mask_vanne_1,((mask_vanne_1)&(value*0xff)),0x00,true);
            this_can->doSendMsg(this_address,data,3,0x00);
            break;
        case 2:
            makeData(data,GPLAT+offset,mask_vanne_2,((mask_vanne_2)&(value*0xff)),0x00,true);
            this_can->doSendMsg(this_address,data,3,0x00);
            break;
        case 3:
            makeData(data,GPLAT+offset,mask_vanne_3,((mask_vanne_3)&(value*0xff)),0x00,true);
            this_can->doSendMsg(this_address,data,3,0x00);
            break;
        case 4:
            makeData(data,GPLAT+offset,mask_vanne_4,((mask_vanne_4)&(value*0xff)),0x00,true);
            this_can->doSendMsg(this_address,data,3,0x00);
            break;
    }
}

void MyVannes::takeModules()
{
	setVanne(4, true); // ouvrir la pince
	setVanne(2, true); // sortir la pince
	time_sleep(2); // attendre que la pince soit sortie
	setVanne(4, false); // fermer la pince
	time_sleep(2); // attendre que le module soit pris
	setVanne(2, false); // rentrer la pince
	time_sleep(2); // attendre que la pince soit rentree
	setVanne(4, true); // ouvrir la pince pour lacher le module
	time_sleep(3); // attendre que la pince soit sortie
	setVanne(2,true);
	time_sleep(1);
	setVanne(2,false);
}

void MyVannes::takeOres()
{
	setVanne(1, true); // monter le frame
	time_sleep(8); //  attendre que le dynamixel mette le frame a lhorizontal
	setVanne(1, false); // descendre le frame
	time_sleep(5); // attendre que le frame soit descendu
	setVanne(1, true); // remonter le frame avec les boules
	time_sleep(5); // attendre que le frame soit remonte
	time_sleep(5); // attendre le dynamixel mette le frame a la verticale pour ejecter les boules
}

void MyVannes::funnyAction()
{
	setVanne(4, true); // lacher la pression
	time_sleep(0.5);
	setVanne(4, false); // refermer la vanne
}

void MyVannes::resetVannes()
{
    setVanne(1,false);
    time_sleep(1);
    setVanne(2,false);
    time_sleep(1);
    setVanne(3,false);
    time_sleep(1);
    setVanne(4,false);
     time_sleep(1);
}



#include <ros/ros.h> 
#include <serial/serial.h>  //ROS已经内置了的串口包 
#include <std_msgs/String.h>
#include <std_msgs/Empty.h> 
#include <std_msgs/Int8.h> 
#include <string>
#include <vector>
#include <serial_cmd/serial.h>
#include <sstream>
#include <cmath>
#include <cstdlib>//string转化为double
#include <iomanip>//保留有效小数
serial::Serial ser; //声明串口对象
serial_cmd::serial msg;

int main(int argc, char** argv)
{
    //初始化节点
    ros::init(argc, argv, "serial_node");
    //声明节点句柄
    ros::NodeHandle nh;
    //注册Publisher到话题GPS
    ros::Publisher cmd_pub = nh.advertise<serial_cmd::serial>("serial_cmd",1000);
    try
    {
      //串口设置
      ser.setPort("/dev/ttyUSB0");
      ser.setBaudrate(115200);
      serial::Timeout to = serial::Timeout::simpleTimeout(1000);
      ser.setTimeout(to);
      ser.open();
    }
    catch (serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open Serial Port !");
        return -1;
    }
    if (ser.isOpen())
    {
        ROS_INFO_STREAM("Serial Port initialized");
    }
    else
    {
        return -1;
    }

    ros::Rate loop_rate(100);
    std::string strRece;
    std_msgs::Int8 cmd;
    while (ros::ok())
    {

        if (ser.available())
        {
            //1.读取串口信息：
            ROS_INFO_STREAM("Reading from serial port\n");
            //通过ROS串口对象读取串口信息
            //std::cout << ser.available();
            //std::cout << ser.read(ser.available());
            strRece = ser.read(ser.available());
            msg.cmd = std::atoi(strRece.c_str());
            msg.header.stamp = ros::Time::now();
            
            //std::cout <<"strRece:" << strRece << "\n" ;
            //strRece = "$GNGGA,122020.70,3908.17943107,N,11715.45190423,E,1,17,1.5,19.497,M,-8.620,M,,*54\r\n";
            //2.截取数据、解析数据：
            //GPS起始标志
            cmd_pub.publish(msg);
           
        }
        
    ros::spinOnce();
    loop_rate.sleep();
    }
}


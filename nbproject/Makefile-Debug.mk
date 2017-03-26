#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Astar_gr1.o \
	${OBJECTDIR}/Controllers_gr1.o \
	${OBJECTDIR}/Electrovannes.o \
	${OBJECTDIR}/FSM_gr1.o \
	${OBJECTDIR}/GPIOClass.o \
	${OBJECTDIR}/Keyboard_gr1.o \
	${OBJECTDIR}/Motors.o \
	${OBJECTDIR}/MyDE0Nano.o \
	${OBJECTDIR}/MyMCP2515.o \
	${OBJECTDIR}/Obstacles_gr1.o \
	${OBJECTDIR}/Odometer.o \
	${OBJECTDIR}/Odometry_gr1.o \
	${OBJECTDIR}/Pathplanning_gr1.o \
	${OBJECTDIR}/Tower_gr1.o \
	${OBJECTDIR}/UsefulFunctions_gr1.o \
	${OBJECTDIR}/Wheels_gr1.o \
	${OBJECTDIR}/globals.o \
	${OBJECTDIR}/initTourelle.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/stop.o \
	${OBJECTDIR}/tourelle.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lwiringPi -lpigpio

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minibot_programming

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minibot_programming: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minibot_programming ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Astar_gr1.o: Astar_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Astar_gr1.o Astar_gr1.cpp

${OBJECTDIR}/Controllers_gr1.o: Controllers_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Controllers_gr1.o Controllers_gr1.cpp

${OBJECTDIR}/Electrovannes.o: Electrovannes.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Electrovannes.o Electrovannes.cpp

${OBJECTDIR}/FSM_gr1.o: FSM_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FSM_gr1.o FSM_gr1.cpp

${OBJECTDIR}/GPIOClass.o: GPIOClass.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/GPIOClass.o GPIOClass.cpp

${OBJECTDIR}/Keyboard_gr1.o: Keyboard_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Keyboard_gr1.o Keyboard_gr1.cpp

${OBJECTDIR}/Motors.o: Motors.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Motors.o Motors.cpp

${OBJECTDIR}/MyDE0Nano.o: MyDE0Nano.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MyDE0Nano.o MyDE0Nano.cpp

${OBJECTDIR}/MyMCP2515.o: MyMCP2515.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MyMCP2515.o MyMCP2515.cpp

${OBJECTDIR}/Obstacles_gr1.o: Obstacles_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Obstacles_gr1.o Obstacles_gr1.cpp

${OBJECTDIR}/Odometer.o: Odometer.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Odometer.o Odometer.cpp

${OBJECTDIR}/Odometry_gr1.o: Odometry_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Odometry_gr1.o Odometry_gr1.cpp

${OBJECTDIR}/Pathplanning_gr1.o: Pathplanning_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pathplanning_gr1.o Pathplanning_gr1.cpp

${OBJECTDIR}/Tower_gr1.o: Tower_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Tower_gr1.o Tower_gr1.cpp

${OBJECTDIR}/UsefulFunctions_gr1.o: UsefulFunctions_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UsefulFunctions_gr1.o UsefulFunctions_gr1.cpp

${OBJECTDIR}/Wheels_gr1.o: Wheels_gr1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Wheels_gr1.o Wheels_gr1.cpp

${OBJECTDIR}/globals.o: globals.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/globals.o globals.cpp

${OBJECTDIR}/initTourelle.o: initTourelle.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/initTourelle.o initTourelle.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/stop.o: stop.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/stop.o stop.cpp

${OBJECTDIR}/tourelle.o: tourelle.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/tourelle.o tourelle.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

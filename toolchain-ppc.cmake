# this one is important
SET(CMAKE_SYSTEM_NAME Linux)
#this one not so much
#SET(CMAKE_SYSTEM_VERSION 1)

SET (DEVKITPPC $ENV{DEVKITPPC})
SET (DEVKITPRO $ENV{DEVKITPRO})

# specify the cross compiler
SET(CMAKE_C_COMPILER   ${DEVKITPPC}/bin/powerpc-eabi-gcc)
SET(CMAKE_CXX_COMPILER ${DEVKITPPC}/bin/powerpc-eabi-g++)

SET (WII true)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  ${DEVKITPPC} ${DEVKITPRO} ${DEVKITPPC}/powerpc-eabi)

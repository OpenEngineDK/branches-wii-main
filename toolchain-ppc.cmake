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
#specify compile flags and include paths for compilation to the powerpc on the nintendo wii
#SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DWII -DGEKKO -mrvl -mcpu=750 -meabi -mhard-float -I${DEVKITPPC}/powerpc-eabi/include -I${DEVKITPPC}/include")


#ADD_DEFINITIONS("-DGEKKO -mrvl -mcpu=750 -meabi -mhard-float -logc -lm")
#TARGET_LINK_LIBRARIES(ogc)
#SET (LINK_FLAGS "${LINK_FLAGS} -logc")
# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  ${DEVKITPPC} ${DEVKITPRO})

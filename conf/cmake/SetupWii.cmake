IF(WII)
  # ADD_DEFINITIONS(-DWII -DGEKKO -mrvl -mcpu=750 -meabi -mhard-float)
  SET (CMAKE_CXX_FLAGS "-D__ppc__ ${CMAKE_CXX_FLAGS} -DWII -DGEKKO -mrvl -mcpu=750 -meabi -mhard-float")
  SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -D__ppc__ -DWII -DGEKKO -mrvl -mcpu=750 -meabi -mhard-float")
  SET (OE_BUILD_TESTS false) # test builds unneeded until we have remote debugger
  MACRO(MAKE_DOL target) 
    ADD_CUSTOM_COMMAND(
      TARGET ${target}
      POST_BUILD
      COMMAND ${DEVKITPPC}/bin/elf2dol ARGS ${target} ${target}.dol
      )
  ENDMACRO(MAKE_DOL)
ENDIF(WII)

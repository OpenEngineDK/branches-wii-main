IF(WII)
  #MESSAGE ("WII")
  SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DWII -mrvl -mcpu=750 -meabi -mhard-float -I${DEVKITPPC}/powerpc-eabi/include -I${DEVKITPPC}/include")
  SET (OE_BUILD_TESTS false) # test builds unneeded until we have remote debugger
  MACRO(MAKE_DOL target) 
    ADD_CUSTOM_COMMAND(
      TARGET ${target}
      POST_BUILD
      COMMAND ${DEVKITPPC}/bin/elf2dol ARGS ${target} ${target}.dol
      )
  ENDMACRO(MAKE_DOL)
ENDIF(WII)

ADD_LIBRARY(OpenEngine_Core
  Core.cpp
  IEngine.h
  IEvent.h
  IListener.h
  IModule.h
  IReflectable.h
  Exceptions.h
  EngineEvents.h
  QueuedEvent.h
  StateEvent.h
  Engine.h
  Engine.cpp
  TickEngine.h
  TickEngine.cpp
#  Thread.h
#  Thread.cpp
#  Mutex.h
#  Mutex.cpp
)

IF(MINGW)
	TARGET_LINK_LIBRARIES(OpenEngine_Core
	${PTHREAD_LIBRARY}
	)
ENDIF(MINGW)
	

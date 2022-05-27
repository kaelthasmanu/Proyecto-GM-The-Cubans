#include <a_npc>

#define RECORDING "policels" //El Nombre del Archivo  <=== Es Un Ejemplo.. Pero lo hice para ustedes
#define RECORDING_TYPE 1 //1 si es en vehiculo

main(){}
public OnRecordingPlaybackEnd() StartRecordingPlayback(RECORDING_TYPE, RECORDING);

#if RECORDING_TYPE == 1
  public OnNPCEnterVehicle(vehicleid, seatid) StartRecordingPlayback(RECORDING_TYPE, RECORDING);
  public OnNPCExitVehicle() StopRecordingPlayback();
#else
  public OnNPCSpawn() StartRecordingPlayback(RECORDING_TYPE, RECORDING);
#endif

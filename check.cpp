#include <iostream>
#include <string>
#include <math.h>
#include <MMDevice/MMDevice.h>
#include <MMDevice/DeviceBase.h>
#include <MMDevice/ModuleInterface.h>
#include <assert.h>

using namespace std;

int
main()
{
  MM::Camera *v=(MM::Camera*)CreateDevice("Video4Linux2");
  assert(v);
  v->Initialize();
  sleep(3);
  return 0;
}

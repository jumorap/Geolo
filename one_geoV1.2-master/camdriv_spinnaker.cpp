#include "camdriv_spinnaker.hpp"

CameraDriver::CameraDriver(unique_ptr<Camera> cam)
{
	camera=move(cam);
	capturing = false;
}

bool CameraDriver::initialize(unsigned int width, unsigned int height, Mode mode, PixelFormat pixel_format, ColorProcessingAlgorithm image_algorithm){
   /* Error error;
    BusManager busMgr;
    unsigned int numCameras;
    error = busMgr.GetNumOfCameras(&numCameras);
    */

 SystemPtr system = System::GetInstance(); //sistema gestor de spinnaker, genera instancias para control de la camara
 CameraList camList = system->GetCameras(); //identificador del numero de camaras conectadas.
/*
proceso de verificacion de camaras conectadas
*/
 if(camList.Getsize() == 0){
 cout << endl << "No se encontraron camaras" << endl << endl;
 return;
 }
/*
@param numCameras: utilizado para almacenar en una variable de tipo enteros sin negativos
*/
unsigned int numCameras = camList.GetSize();
 cout << "numero de camaras detectadas" << numCameras;
 

 
 CameraPtr pCam = Null;
 for(int i=0; i<numCameras; i++){
   pCam = camList.GetByIndex(i);
    pCam->Init();
 }
*/
}

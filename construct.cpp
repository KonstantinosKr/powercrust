/*=========================================================================
 
 An example for powercrust algorithm.
 Copyright (C) 2014  Arash Akbarinia
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 
 =========================================================================*/

#include "powercrust.h"
#include "vtkPLYReader.h"
#include "vtkSmartPointer.h"
#include "vtkPolyDataWriter.h"
#include <sstream>

#define nparticles 1000
#define rad 10.0
#define pts 200

int main ( int argc, char** argv )
{
  int npoints = pts; /* memory buffer size */
  int n = nparticles;
  double radius = rad;
  
  double x[npoints][n];
  double y[npoints][n];
  double z[npoints][n];
  
  srand(time(NULL));
  double p[3];
  vtkSmartPointer<vtkPoints> points = vtkSmartPointer<vtkPoints>::New();
  
  for(int i = 0; i<n; i++)
  {
    for(int j = 0; j<npoints; j++)
    {
      const double eps = 0.25;
      double rng1 = 0;
      double rng2 = 360;
      double phi = (rng2-rng1) * drand48() + rng1;
      double theta = (rng2-rng1) * drand48() + rng1;
      double myradius = ((drand48()*eps)+1.0-eps) * radius;
      
      x[j][i] = myradius*sin(phi) * cos(theta);
      y[j][i] = myradius*sin(phi) * sin(theta);
      z[j][i] = myradius*cos(phi);
      
      p[0] = x[j][i];
      p[1] = y[j][i];
      p[2] = z[j][i];
      points->InsertPoint(i,p);
      //std::cout << p[0] << ' ' << p[1] << ' ' << p[2] << std::endl;
    }

    vtkSmartPointer<vtkPolyData> dataSet = vtkSmartPointer<vtkPolyData>::New();
    dataSet->SetPoints( points );

    vtkSmartPointer<powercrust> reconstruct = vtkSmartPointer<powercrust>::New();
    reconstruct->SetInputData( dataSet );
    reconstruct->Update();
    
    std::string OutFileName = "particles/par_";
    std::ostringstream convert;
    convert << i;
    OutFileName.append ( convert.str() );
    OutFileName.append ( ".vtk" );
    std::cout << "Writing: " << OutFileName << std::endl;
    
    vtkSmartPointer<vtkPolyDataWriter> vtkwriter = vtkSmartPointer<vtkPolyDataWriter>::New();
    vtkwriter->SetInputData( reconstruct->GetOutput());
    vtkwriter->SetFileName(OutFileName.c_str());
    vtkwriter->Write(); 
  }
  return 0;
}


/*=========================================================================

    powercrust algorithm reconstructs surfaces from
    unorganized point data.
    Copyright (C) 2014  Arash Akbarinia, Tim Hutton, Bruce Lamond
                        Dieter Pfeffer, Oliver Moss

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
// .NAME powercrust - reconstructs surfaces from
// unorganized point data
// .SECTION Description powercrust
// reconstructs a surface from unorganized points scattered across its
// surface. This is teh clean up version of the original code, please read
// the full copyright notices in the LICENCE file.

#ifndef __powercrust_h
#define __powercrust_h

#include "vtkPolyData.h"
#include "vtkPolyDataAlgorithm.h"
#include "vtkSmartPointer.h"

class powercrust : public vtkPolyDataAlgorithm
{

public:
  static powercrust* New();
  vtkTypeMacro ( powercrust, vtkPolyDataAlgorithm );
  void PrintSelf ( ostream& os, vtkIndent indent );

  // Description:
  // This error function allows our ported code to report error messages neatly.
  // This is not for external use.
  void Error ( const char *message );

  vtkSetMacro ( EstimateR, double );
  vtkGetMacro ( EstimateR, double );
  vtkGetMacro ( MultlUp, double );
  vtkGetMacro ( MedialSurface, vtkPolyData* );

protected:
  powercrust();
  ~powercrust();

  // Description:
  // the main function that does the work
  virtual int RequestData ( vtkInformation*, vtkInformationVector**, vtkInformationVector* );
  virtual int FillInputPortInformation ( int port, vtkInformation* info );

  void ComputeInputUpdateExtents ( vtkDataObject* output );
  void ExecuteInformation();

  vtkPolyData* MedialSurface;
  double EstimateR;
  double MultlUp;

private:
  powercrust ( const powercrust& ); // Not implemented.
  void operator= ( const powercrust& ); // Not implemented.

};

#endif


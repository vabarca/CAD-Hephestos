///////////////////////////////////////////////////////////////////////////////
/// \file SteppersManager.h
///
/// \author Ruy Garcia
///
/// \brief Management class for the stepper drivers.
///
/// Copyright (c) 2015 BQ - Mundo Reader S.L.
/// http://www.bq.com
///
/// This file is free software; you can redistribute it and/or modify
/// it under the terms of either the GNU General Public License version 2 or
/// later or the GNU Lesser General Public License version 2.1 or later, both
/// as published by the Free Software Foundation.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
/// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
/// DEALINGS IN THE SOFTWARE.
///////////////////////////////////////////////////////////////////////////////

#ifndef STEPPERS_MANAGER_H
#define STEPPERS_MANAGER_H

#include "Singleton.h"
#include "Subject.h"
#include "StepperClass.h"

class SteppersManager : public Subject<bool>
{
	public:
		typedef enum
		{
			AXIS_X = 0,
			AXIS_Y,
			AXIS_Z,
			EXTRUDER,
			NUM_STEPPERS
		} Stepper_t;

		typedef Singleton<SteppersManager> single;

	public:
		SteppersManager();

		static void disableAllSteppers();

		void enableStepper(Stepper_t stepper);
		void disableStepper(Stepper_t stepper);
		void notify();

	private:
		bool m_steppers_disabled;

		Stepper m_steppers[NUM_STEPPERS];
};

#endif //STEPPERS_MANAGER_H

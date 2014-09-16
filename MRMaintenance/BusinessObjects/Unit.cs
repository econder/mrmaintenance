/***************************************************************************************************
 * Class:   	Unit.cs
 * Created By: 	Eric Conder
 * Created On: 	9/15/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of Unit.
	/// </summary>
	public class Unit
	{
		public Unit()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Abbreviation { get; set; }
	}
}

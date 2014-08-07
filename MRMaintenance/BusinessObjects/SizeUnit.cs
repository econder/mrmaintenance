/***************************************************************************************************
 * Class:   	SizeUnit.cs
 * Created By: 	Eric Conder
 * Created On: 	8/6/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of SizeUnit.
	/// </summary>
	public class SizeUnit
	{
		public SizeUnit()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Abbreviation { get; set; }
	}
}

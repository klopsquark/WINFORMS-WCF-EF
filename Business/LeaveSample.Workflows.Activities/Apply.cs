//====================================================================================================
// Base code generated with Vector: WFA Gen (Build 2.0.4877.28464)
// Layered Architecture Solution Guidance (http://layerguidance.codeplex.com)
//
// Generated by Serena Yeoh at ALIENWARE on 05/09/2013 15:54:13 
//====================================================================================================

using System;
using System.Activities;
using System.Collections.Generic;
using LeaveSample.Entities;
using LeaveSample.Business;

namespace LeaveSample.Workflows.Activities
{
    /// <summary>
    /// Apply workflow activity.
    /// </summary>
    [Serializable]
    public sealed class Apply : CodeActivity
    {
        // Argument declaration.
        public InOutArgument<Leave> Leave { get; set; }

        protected override void Execute(CodeActivityContext context)
        {

            // Argument initialization (if any).
            Leave leave = context.GetValue(this.Leave);

            // Instantiate business components.
            LeaveComponent leaveComponent = new LeaveComponent();

            // Call business component methods.
            leave = leaveComponent.Apply(leave);

            // Set value to Out arguments (if any).
            context.SetValue(this.Leave, leave);
        }
    }
}

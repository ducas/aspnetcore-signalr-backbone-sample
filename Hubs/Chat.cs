// Copyright (c) .NET Foundation. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR;

namespace service_bus_sample.Hubs
{
    public class Chat : Hub
    {
        public Chat() { }

        public async Task Send(string message)
        {
            await Clients.All.InvokeAsync("Send", message);
        }
    }
}
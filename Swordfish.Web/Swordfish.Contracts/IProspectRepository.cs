﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Swordfish.BusinessObjects;

namespace Swordfish.Contracts
{
  public interface IProspectRepository
  {
    boProspectCustomer GetById(int id);
  }

}

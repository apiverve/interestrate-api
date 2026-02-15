using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.InterestRate
{
    /// <summary>
    /// Query options for the Interest Rate API
    /// </summary>
    public class InterestRateQueryOptions
    {
        /// <summary>
        /// 2-letter country code
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }
    }
}

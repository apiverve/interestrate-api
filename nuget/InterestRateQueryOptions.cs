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

        /// <summary>
        /// Optional month in YYYY-MM format for a historical lookup. Omit for the current rate.
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}

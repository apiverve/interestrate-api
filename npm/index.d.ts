declare module '@apiverve/interestrate' {
  export interface interestrateOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface interestrateResponse {
    status: string;
    error: string | null;
    data: InterestRateData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface InterestRateData {
      country:         null | string;
      countryName:     null | string;
      centralBank:     null | string;
      rate:            number | null;
      date:            Date | null;
      lastUpdated:     Date | null;
      lastChanged:     Date | null;
      change:          number | null;
      changeDirection: null | string;
      previousRate:    number | null;
  }

  export default class interestrateWrapper {
    constructor(options: interestrateOptions);

    execute(callback: (error: any, data: interestrateResponse | null) => void): Promise<interestrateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: interestrateResponse | null) => void): Promise<interestrateResponse>;
    execute(query?: Record<string, any>): Promise<interestrateResponse>;
  }
}

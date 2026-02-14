declare module '@apiverve/interestrate' {
  export interface interestrateOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface interestrateResponse {
    status: string;
    error: string | null;
    data: InterestRateData;
    code?: number;
  }


  interface InterestRateData {
      country:     string;
      countryName: string;
      centralBank: string;
      rate:        number;
      date:        Date;
      lastUpdated: Date;
  }

  export default class interestrateWrapper {
    constructor(options: interestrateOptions);

    execute(callback: (error: any, data: interestrateResponse | null) => void): Promise<interestrateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: interestrateResponse | null) => void): Promise<interestrateResponse>;
    execute(query?: Record<string, any>): Promise<interestrateResponse>;
  }
}

CREATE TABLE public.asset (
    id BIGSERIAL PRIMARY KEY,
    symbol VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(10),
    yf_symbol VARCHAR(10) NOT NULL
);

CREATE TABLE public.portfolio (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE public.asset_portfolio (
    id BIGSERIAL PRIMARY KEY,
    asset_id INTEGER NOT NULL REFERENCES asset(id),
    portfolio_id INTEGER NOT NULL REFERENCES portfolio(id),
    UNIQUE(asset_id, portfolio_id)
);

INSERT INTO public.portfolio(name) VALUES ('IBOV'), ('QuantBrasil');
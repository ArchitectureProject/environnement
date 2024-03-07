\connect session

-- Table: public.session

-- DROP TABLE IF EXISTS public.session;

CREATE TABLE IF NOT EXISTS public.session
(
    "Id" text COLLATE pg_catalog."default" NOT NULL,
    "StartedAt" bigint NOT NULL,
    "ClosedAt" bigint,
    "LocationQrCode" text COLLATE pg_catalog."default" NOT NULL,
    "Orders" text[] COLLATE pg_catalog."default" NOT NULL,
    "TotalPrice" real NOT NULL,
    "CurrentlyPaid" real NOT NULL,
    "ActuallyProcessingPayment" boolean NOT NULL,
    CONSTRAINT "PK_session" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.session
    OWNER to admin_user;
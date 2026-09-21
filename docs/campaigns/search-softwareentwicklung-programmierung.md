# Search - Softwareentwicklung / Programmierung

> Source of truth for campaign data: Google Ads account.
> This file documents the reasoning behind the campaign setup only.

## Purpose

Capture high-intent German searches from SMB owners and CXOs looking for custom software development, agency support, or outsourcing partners.

## Key decisions

### Match type: exact only

Exact match keeps spend controlled and query relevance high. The keyword set is small and well-defined; broad or phrase match would likely attract irrelevant traffic (job seekers, students, DIY builders) before enough conversion data exists to train negatives effectively.

Future expansion to phrase or broad match should only happen after:

- consistent conversion data exists,
- a solid negative-keyword list is built from search terms, and
- budget allows for exploratory spend.

### Bidding: Manual CPC

The expected click volume is low (exact-only, DACH-only, B2B service terms). Maximize Conversions would not get enough signals to learn efficiently and could spend the full daily budget on one expensive click. Manual CPC at a starting bid of €2.00 gives controlled learning.

Revisit automated bidding only after the campaign generates a meaningful number of conversions per month.

### Budget: €20/day

A test budget matched to low-volume exact-match terms. At typical DACH B2B CPCs, this yields a small but useful number of clicks per day without overspending during the learning phase.

### Geo targeting: DACH only, presence-only

Keywords are German. The ICP is German-speaking SMB owners and CXOs. Targeting is restricted to people physically in or regularly in Austria, Germany, and Switzerland.

### Network: Google Search only

No Search Partners, no Display Network. This keeps traffic quality high and reporting clean for a pure search-intent campaign.

### Ad group structure

Keywords are grouped by intent clusters, not dumped into one ad group:

- **Agentur Softwareentwicklung** — users explicitly looking for an agency.
- **Individuelle Software** — users looking for bespoke/custom software.
- **Externe & Dienstleister** — users looking for outsourcing or external providers.
- **Entwickeln lassen** — users exploring the "have something built" intent.

This improves ad relevance and makes performance easier to interpret per intent.

### Ads: German RSAs with pinned Headline 1

Ads are in German to match the search language. In 3 out of 4 ad groups, Headline 1 is pinned to position 1. Pinning gives us control over the first impression: we want to clearly communicate what Digital Makery does and avoid leaving it to chance which headline appears first, since a rotated headline might not combine sensibly with the other headlines shown.

### Sitelink assets

Five sitelinks are attached to the campaign to increase SERP real estate and give users direct paths to relevant sections:

- Leistungen
- Prozess
- Projekte
- FAQ
- Erstgespräch

Because digitalmakery.io is currently a single-page site, each sitelink points to an anchor on the same URL (e.g. `/#leistungen`). This maximizes usable ad space while the site remains minimal. Sitelinks can be expanded or pointed to distinct pages once the site grows.

### Negative keywords

Initial negatives target the most common irrelevant intents for software-development queries: job seekers, students, freebie hunters, and people looking for templates or tutorials. The list should be tightened weekly based on the search terms report.

## When to change this file

Update this file whenever the campaign's strategy, structure, bidding, targeting, or ad copy philosophy changes — so the reasoning stays in sync with the live campaign.

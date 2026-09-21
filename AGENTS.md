# Digital Makery Google Ads

You are a google ads expert.

## About Digital Makery

Find info about Digital Makery under:

- `./docs/offering.md`
- `./docs/icp.md`

## Procedures

- Saved keyword plans live in the Google Ads account.
- List plans: `SELECT keyword_plan.id, keyword_plan.name FROM keyword_plan`.
- List plan keywords: `SELECT keyword_plan.name, keyword_plan_ad_group.name, keyword_plan_ad_group_keyword.text, keyword_plan_ad_group_keyword.match_type, keyword_plan_ad_group_keyword.negative FROM keyword_plan_ad_group_keyword`.

## Campaign reasoning

Campaign setup decisions and reasoning are documented in `docs/campaigns/`, one file per active campaign. These files explain *why* a campaign is structured the way it is — actual campaign data lives in Google Ads. When you change a campaign's structure, bidding, targeting, or strategy, update the corresponding file in `docs/campaigns/` to keep the reasoning in sync.

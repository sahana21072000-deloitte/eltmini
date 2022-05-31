{{ config(materialized = 'table') }}
select postvar:"@Body" as Text, uservar: "@DisplayName" as DisplayName
from posts, userstable
where postvar:"@PostTypeId" = '1' and uservar:"@DisplayName" like any('alexandrul') and postvar:"@AcceptedAnswerId" = uservar:"@Id"

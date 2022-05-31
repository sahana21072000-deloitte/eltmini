{{ config(materialized = 'table') }}
select commentvar: "@Text" as Text
from comments , userstable
where uservar:"@Id" = commentvar:"@UserId" and
uservar:"@DisplayName" like any('%nau%')

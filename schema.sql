CREATE TABLE invites (
  invite_id STRING(36),
  entity_id STRING(36),
  requester_id STRING(36),
  inviter_id STRING(36),  
  type String(150) NOT NULL,
  recipient String(150) NOT NULL,
  referral_code String(150) ,
  status String(150) NOT NULL,
  created_by STRING(36),
  updated_by STRING(36),
  deleted_by STRING(36),
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL OPTIONS (allow_commit_timestamp=true),
  deleted_at TIMESTAMP,
) PRIMARY KEY (invite_id);

CREATE INDEX InvitesEntityId ON invites(entity_id);
CREATE INDEX InvitesInviterId ON invites(inviter_id);
CREATE INDEX InvitesReferralCode ON invites(referral_code);
CREATE INDEX InvitesRecipient ON invites(recipient);
CREATE INDEX InvitesRequesterId ON invites(requester_id);
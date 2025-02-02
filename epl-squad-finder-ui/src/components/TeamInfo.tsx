import React from "react";
import Tag from "./Tag";
import { Team } from "../api/api";
import styled from "styled-components";
import { useNavigate } from "react-router-dom";

interface TeamInfoProps {
  team: Team;
}

const TeamRow = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1rem;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
`;

const TeamDetails = styled.div`
  display: flex;
  flex: 1;
  align-items: center;
  gap: 1rem;
`;

const TeamImage = styled.img`
  width: 50px;
  height: 50px;
  object-fit: contain;
  border-radius: 5px;
`;

const TeamName = styled.h3`
  margin: 0;
`;

const TeamActions = styled.div`
  display: flex;
  gap: 1rem;
  align-items: center;
`;

const Button = styled.button`
  background-color: var(--primary-color);
  color: #fff;
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 5px;
  cursor: pointer;
  &:hover {
    opacity: 0.9;
  }
`;

const TagContainer = styled.div`
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-top: 0.5rem;
`;

const TeamInfo: React.FC<TeamInfoProps> = ({ team }) => {
  const navigate = useNavigate();

  return (
    <TeamRow>
      <TeamDetails>
        <TeamImage src={team.emblemPictureUri} alt={team.name} loading="lazy" />
        <div>
          <TeamName>{team.name}</TeamName>
          {team.nicknames && team.nicknames.length > 0 && (
            <TagContainer>
              {team.nicknames.map((nick, index) => (
                <Tag key={index}>{nick}</Tag>
              ))}
            </TagContainer>
          )}
        </div>
      </TeamDetails>
      <TeamActions>
        <a href={team.website} target="_blank" rel="noopener noreferrer">
          Visit Website
        </a>
        <Button onClick={() => navigate(`/squad/${team.id}`)}>
          Show Squad
        </Button>
      </TeamActions>
    </TeamRow>
  );
};

export default TeamInfo;

import { Player } from "../api/api";
import React from "react";
import { calculateAge } from "../utils";
import styled from "styled-components";

interface PlayerCardProps {
  player: Player;
}

const Card = styled.div`
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 1.5rem;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
`;

const Image = styled.img`
  width: 100px;
  height: 100px;
  object-fit: cover;
  border-radius: 5px;
`;

const InfoContainer = styled.div`
  display: flex;
  flex-direction: column;
`;

const Name = styled.h4`
  margin: 0;
  font-size: 1.2rem;
`;

const Details = styled.p`
  margin: 0.2rem 0 0;
  font-size: 0.9rem;
  color: var(--font-color);
`;

const PlayerCard: React.FC<PlayerCardProps> = ({ player }) => {
  return (
    <Card>
      <Image
        src={player.profilePic}
        alt={`${player.firstName} ${player.surname}`}
        loading="lazy"
      />
      <InfoContainer>
        <Name>
          {player.firstName} {player.surname}
        </Name>
        <Details>
          {player.position} | Number: {player.number}
        </Details>
        <Details>
          {player.dateOfBirth
            ? `Date of Birth: ${new Date(
                player.dateOfBirth
              ).toLocaleDateString()} (${calculateAge(player.dateOfBirth)}y)`
            : `Age: ${player.age}`}
        </Details>
      </InfoContainer>
    </Card>
  );
};

export default PlayerCard;

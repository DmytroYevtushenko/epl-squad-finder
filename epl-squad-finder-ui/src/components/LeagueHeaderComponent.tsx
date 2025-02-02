import React from "react";
import styled from "styled-components";

interface LeagueHeaderProps {
  emblemPictureUri: string;
  name: string;
  season: number;
  seasonStartDate: string;
  seasonEndDate: string;
}

const Header = styled.div`
  margin-bottom: 1.5rem;
`;

const Row = styled.div`
  display: flex;
  align-items: center;
`;

const Logo = styled.img`
  width: 60px;
  height: 60px;
  border-radius: 50%;
  margin-right: 1rem;
`;

const Name = styled.h2`
  margin: 0;
  font-size: 2rem;
`;

const Season = styled.p`
  margin: 0;
  font-size: 1rem;
  color: var(--font-color);
`;

const LeagueHeaderComponent: React.FC<LeagueHeaderProps> = ({
  emblemPictureUri,
  name,
  season,
  seasonStartDate,
  seasonEndDate,
}) => {
  const formatDate = (date: string) => new Date(date).toLocaleDateString();
  const formattedDateRange = `${formatDate(seasonStartDate)} - ${formatDate(
    seasonEndDate
  )}`;

  return (
    <Header>
      <Row>
        {emblemPictureUri && <Logo src={emblemPictureUri} alt={name} />}
        <Name>{name}</Name>
      </Row>
      <Season>
        Season: {season} ({formattedDateRange})
      </Season>
    </Header>
  );
};

export default LeagueHeaderComponent;

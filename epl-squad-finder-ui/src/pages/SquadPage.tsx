import {
  Team,
  addNicknameToTeam,
  getTeamData,
  removeNicknameFromTeam,
} from "../api/api";
import { useEffect, useState } from "react";

import NicknameManager from "../components/NicknameManager";
import PlayerCard from "../components/PlayerCard";
import SearchInput from "../components/SearchInput";
import styled from "styled-components";
import { useParams } from "react-router-dom";

const Container = styled.div`
  padding: 1rem;
  max-width: 600px;
  margin: 0 auto;
`;

const ContentWrapper = styled.div`
  max-width: 600px;
  margin: 0 auto;
`;

const Header = styled.div`
  display: flex;
  align-items: center;
  margin-bottom: 1rem;
`;

const Logo = styled.img`
  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin-right: 1rem;
`;

const Title = styled.h2`
  margin: 0;
  font-size: 2rem;
`;

const Info = styled.p`
  font-size: 1rem;
  color: var(--font-color);
`;

const PlayerList = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1rem;
  margin-top: 1rem;
`;

const SquadPage = () => {
  const { id } = useParams<{ id: string }>();
  const [teamData, setTeamData] = useState<Team | null>(null);
  const [playerSearchTerm, setPlayerSearchTerm] = useState("");
  const [nicknames, setNicknames] = useState<any[]>([]);

  useEffect(() => {
    if (id) {
      getTeamData(Number(id))
        .then((data) => setTeamData(data))
        .catch((err) => console.error(err));
    }
  }, [id]);

  useEffect(() => {
    if (teamData) {
      setNicknames(teamData.nicknames);
    }
  }, [teamData]);

  if (!teamData) {
    return <Container>Loading...</Container>;
  }

  const onAddNickname = async (nickname: string) => {
    try {
      const addedNick = await addNicknameToTeam(Number(id), nickname);
      setNicknames((prevNicknames) => [...prevNicknames, addedNick]);
    } catch (error) {
      console.error("Error adding nickname:", error);
    }
  };

  const onRemoveNickname = async (nicknameId: number) => {
    try {
      await removeNicknameFromTeam(nicknameId);
      setNicknames(nicknames.filter((nick: any) => nick.id !== nicknameId));
    } catch (error) {
      console.error("Error removing nickname:", error);
    }
  };

  const filteredPlayers = teamData.players
    ?.filter((player) => {
      const term = playerSearchTerm.toLowerCase();
      return (
        player.firstName.toLowerCase().includes(term) ||
        player.surname.toLowerCase().includes(term) ||
        player.position.toLowerCase().includes(term)
      );
    })
    .map((player) => (
      <PlayerCard
        key={`${player.firstName}-${player.surname}-${player.number}`}
        player={player}
      />
    ));

  return (
    <Container>
      <Header>
        <Logo src={teamData.emblemPictureUri} alt={teamData.name} />
        <Title>{teamData.name}</Title>
      </Header>
      <Info>
        Website:{" "}
        <a href={teamData.website} target="_blank" rel="noopener noreferrer">
          {teamData.website}
        </a>
      </Info>

      <ContentWrapper>
        <NicknameManager
          nicknames={nicknames}
          onAddNickname={onAddNickname}
          onRemoveNickname={onRemoveNickname}
        />

        <SearchInput
          placeholder="Search players..."
          value={playerSearchTerm}
          onChange={(e) => setPlayerSearchTerm(e.target.value)}
        />

        <PlayerList>{filteredPlayers}</PlayerList>
      </ContentWrapper>
    </Container>
  );
};

export default SquadPage;

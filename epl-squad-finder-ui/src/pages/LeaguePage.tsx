import { League, getLeagueData } from "../api/api";
import { useEffect, useState } from "react";

import LeagueHeaderComponent from "../components/LeagueHeaderComponent";
import SearchInput from "../components/SearchInput";
import TeamInfo from "../components/TeamInfo";
import styled from "styled-components";

const TeamList = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1rem;
  margin-top: 1rem;
`;

const LeaguePage = () => {
  const LeagueId = 1; // Use as the default league id
  const [leagueData, setLeagueData] = useState<League | null>(null);
  const [searchTerm, setSearchTerm] = useState("");

  useEffect(() => {
    getLeagueData(LeagueId)
      .then((data) => setLeagueData(data))
      .catch((err) => console.error(err));
  }, []);

  if (!leagueData) {
    return <p>Loading...</p>;
  }

  const filteredTeams = leagueData?.teams
    .filter((team) => {
      const lowerSearch = searchTerm.toLowerCase();
      return (
        team.name.toLowerCase().includes(lowerSearch) ||
        (team.nicknames &&
          team.nicknames.some((nick) =>
            nick.toLowerCase().includes(lowerSearch)
          ))
      );
    })
    ?.map((team) => <TeamInfo key={team.id} team={team} />);

  return (
    <div style={{ padding: "1rem" }}>
      <>
        <LeagueHeaderComponent
          emblemPictureUri={leagueData.emblemPictureUri}
          name={leagueData.name}
          season={leagueData.season}
          seasonStartDate={leagueData.seasonStartDate}
          seasonEndDate={leagueData.seasonEndDate}
        />

        <SearchInput
          placeholder="Search teams..."
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
        />

        <TeamList>{filteredTeams}</TeamList>
      </>
    </div>
  );
};

export default LeaguePage;

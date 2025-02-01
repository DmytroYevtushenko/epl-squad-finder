export interface Nickname {
  id: number;
  name: string;
}

export interface Team {
  id: number;
  name: string;
  website: string;
  emblemPictureUri: string;
  nicknames: string[];
  players?: Player[];
}

export interface Player {
  firstName: string;
  surname: string;
  position: string;
  dateOfBirth?: string;
  age: number;
  number: number;
  profilePic: string;
}

export interface League {
  name: string;
  season: number;
  seasonStartDate: string;
  seasonEndDate: string;
  emblemPictureUri: string;
  teams: Team[];
}

export const getLeagueData = async (leagueId: number): Promise<League> => {
  const hostAddress = import.meta.env.VITE_EplSquadFinder_HostAddress;
  const response = await fetch(`${hostAddress}/api/leagues/${leagueId}`);
  if (!response.ok) {
    throw new Error(`Failed to fetch league data: ${response.statusText}`);
  }
  const data = await response.json();
  return data;
};

export const getTeamData = async (teamId: number): Promise<Team> => {
  const hostAddress = import.meta.env.VITE_EplSquadFinder_HostAddress;
  const response = await fetch(`${hostAddress}/api/teams/${teamId}`);
  if (!response.ok) {
    throw new Error(`Failed to fetch team data: ${response.statusText}`);
  }
  const data = await response.json();
  return data;
};

export const addNicknameToTeam = async (teamId: number, nickname: string): Promise<Nickname> => {
  const hostAddress = import.meta.env.VITE_EplSquadFinder_HostAddress;
  const response = await fetch(`${hostAddress}/api/teamnicknames/team/${teamId}`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(nickname),
  });

  if (!response.ok) {
    throw new Error(`Failed to add nickname: ${response.statusText}`);
  }

  const data = await response.json();
  return data;
};

export const removeNicknameFromTeam = async (nicknameId: number): Promise<void> => {
  const hostAddress = import.meta.env.VITE_EplSquadFinder_HostAddress;
  const response = await fetch(`${hostAddress}/api/teamnicknames/${nicknameId}`, {
    method: "DELETE",
    headers: {
      "Accept": "application/json",
    },
  });

  if (!response.ok) {
    throw new Error(`Failed to remove nickname: ${response.statusText}`);
  }
}; 
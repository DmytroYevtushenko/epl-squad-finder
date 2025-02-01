import React, { useRef, useState } from "react";

import Tag from "./Tag";
import styled from "styled-components";

interface NicknameManagerProps {
  nicknames: { id: number; name: string }[];
  onAddNickname: (nickname: string) => void;
  onRemoveNickname: (nicknameId: number) => void;
}

const TagBox = styled.div`
  background: #f9f9f9;
  padding: 1rem;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  margin-bottom: 0.5rem;
`;

const NicknameContainer = styled.div`
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 0.5rem;
`;

const NicknameInput = styled.input`
  padding: 0.5rem;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 1rem;
  background-color: #fff;
  color: #333;
`;

const AddNicknameTag = styled.span`
  background-color: #e0f7fa;
  color: var(--primary-color);
  padding: 0.2rem 0.5rem;
  border-radius: 5px;
  cursor: pointer;
  font-size: 0.9rem;
`;

const NicknameInputTag = styled.div`
  background: #f0f0f0;
  padding: 0.2rem 0.5rem;
  border: 1px solid #ccc;
  border-radius: 5px;
  display: flex;
  align-items: center;
  gap: 0.3rem;
`;

const SaveNicknameButton = styled.button`
  background: var(--primary-color);
  color: #fff;
  border: none;
  padding: 0.2rem 0.5rem;
  border-radius: 5px;
  cursor: pointer;
  font-size: 0.8rem;
`;

const CancelNicknameButton = styled.button`
  background: none;
  border: none;
  color: #666;
  cursor: pointer;
  font-size: 0.8rem;
`;

const NicknameManager: React.FC<NicknameManagerProps> = ({
  nicknames,
  onAddNickname,
  onRemoveNickname,
}) => {
  const inputRef = useRef<HTMLInputElement>(null);
  const [isAddingNickname, setIsAddingNickname] = useState(false);

  const handleAddNickname = () => {
    if (inputRef.current && inputRef.current.value.trim() !== "") {
      onAddNickname(inputRef.current.value.trim());
      inputRef.current.value = ""; // Clear the input
      setIsAddingNickname(false);
    }
  };

  return (
    <TagBox>
      <NicknameContainer>
        {nicknames.map((nick) => (
          <Tag key={nick.id} onRemove={() => onRemoveNickname(nick.id)}>
            {nick.name}
          </Tag>
        ))}
      </NicknameContainer>
      {isAddingNickname ? (
        <NicknameInputTag>
          <NicknameInput
            ref={inputRef}
            type="text"
            placeholder="New Nickname..."
          />
          <SaveNicknameButton onClick={handleAddNickname}>
            Save
          </SaveNicknameButton>
          <CancelNicknameButton
            onClick={() => {
              setIsAddingNickname(false);
              if (inputRef.current) inputRef.current.value = "";
            }}
          >
            Cancel
          </CancelNicknameButton>
        </NicknameInputTag>
      ) : (
        <AddNicknameTag onClick={() => setIsAddingNickname(true)}>
          + Add Nickname
        </AddNicknameTag>
      )}
    </TagBox>
  );
};

export default NicknameManager;

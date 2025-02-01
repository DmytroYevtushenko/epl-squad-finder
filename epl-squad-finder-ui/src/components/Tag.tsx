import React from "react";
import styled from "styled-components";

interface TagProps {
  children: React.ReactNode;
  onRemove?: () => void;
}

const TagContainer = styled.span`
  background: #eee;
  color: #333;
  padding: 0.2rem 0.5rem;
  border-radius: 5px;
  font-size: 0.9rem;
  display: flex;
  align-items: center;
`;

const RemoveButton = styled.button`
  background: none;
  border: none;
  margin-left: 0.5rem;
  cursor: pointer;
  font-size: 0.9rem;
  color: red;
`;

const Tag: React.FC<TagProps> = ({ children, onRemove }) => {
  return (
    <TagContainer>
      {children}
      {onRemove && <RemoveButton onClick={onRemove}>x</RemoveButton>}
    </TagContainer>
  );
};

export default Tag;

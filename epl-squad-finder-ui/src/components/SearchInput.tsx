import React from "react";
import styled from "styled-components";

interface SearchInputProps {
  value: string;
  onChange: React.ChangeEventHandler<HTMLInputElement>;
  placeholder?: string;
}

const Container = styled.div`
  display: flex;
  align-items: center;
  margin-bottom: 1rem;
  border: 1px solid #ccc;
  border-radius: 25px;
  padding: 0.5rem;
  background-color: #fff;
`;

const Icon = styled.span`
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 0.5rem;

  svg {
    fill: var(--primary-color);
    width: 20px;
    height: 20px;
  }
`;

const Input = styled.input`
  flex: 1;
  border: none;
  outline: none;
  font-size: 1rem;
  background-color: #fff;
  padding: 0.5rem;
  color: var(--font-color);
  caret-color: var(--primary-color);
`;

const SearchInput: React.FC<SearchInputProps> = ({
  value,
  onChange,
  placeholder = "Search",
}) => {
  return (
    <Container>
      <Icon>
        <svg viewBox="0 0 24 24">
          <path d="M21 20l-5.2-5.2A7.9 7.9 0 0018 10a8 8 0 10-8 8 7.9 7.9 0 004.8-1.2L20 21zM4 10a6 6 0 116 6 6 6 0 01-6-6z" />
        </svg>
      </Icon>
      <Input
        type="text"
        value={value}
        onChange={onChange}
        placeholder={placeholder}
      />
    </Container>
  );
};

export default SearchInput;

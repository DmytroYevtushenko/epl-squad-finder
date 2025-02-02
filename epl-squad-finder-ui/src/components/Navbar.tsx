import { Link } from "react-router-dom";
import styled from "styled-components";

const Nav = styled.nav`
  background-color: #e4e4e4;
  color: #28a745;
  padding: 1rem;
  display: flex;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  width: 100%;
  z-index: 1000;
`;

const Title = styled.h1`
  font-size: 1.5rem;
  margin: 0;
  color: inherit;
`;

const StyledLink = styled(Link)`
  color: var(--primary-color);
  text-decoration: none;
  font-size: 1rem;
  transition: color 0.2s ease;
`;

const Navbar = () => {
  return (
    <Nav>
      <StyledLink to="/">
        <Title>EPL Squad Finder</Title>
      </StyledLink>
    </Nav>
  );
};

export default Navbar;

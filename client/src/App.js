import React from "react";
import { BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import ViewCart from "./components/carts/ViewCart";
import ItemList from "./components/items/ItemList";
import Navbar from "./components/navigation/Navbar";
import Home from "./components/static/Home";

const App = () => {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/items" element={<ItemList />} />
        <Route path="/checkout" element={<ViewCart />} />
      </Routes>
      </Router>
  );
}

export default App;

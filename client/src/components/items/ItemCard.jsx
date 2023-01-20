import React from 'react';
import { Card } from '@material-ui/core';

const ItemCard = ({item}) => {
  return (
    <div>
      <Card style={{color:"#000"}}>
      <h4>Item Name: {item.title}</h4>
      <p>Description: {item.description}</p>
      <p>Price: {item.price}</p>
      <p>{item.image_url}</p>
      </Card>
    </div>
  )
}

export default ItemCard;



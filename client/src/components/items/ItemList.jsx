import React from 'react'
import ItemCard from './ItemCard'

const ItemList = ({items}) => {
  const itemCards=items.map(item => <ItemCard key = {item.id} item={item}/>)
  return (
    <div>
    <h2>Item List</h2>
    {itemCards}
      </div>
  )
}

export default ItemList


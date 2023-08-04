import React from 'react';

const Price = (props) => {
  return (
    <div>
      <div className="disButtonBase-root disChip-root makeStyles-price-23 disChip-outlined">
        <span className="disChip-label">{props.sellPrice} DANG</span>
      </div>
    </div>
  );
};

export default Price;
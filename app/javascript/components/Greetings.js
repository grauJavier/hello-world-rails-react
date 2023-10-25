import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { fetchRandomGreeting } from '../store/greetings/greetingSlice';

const Greetings = () => {
  const dispatch = useDispatch();
  const { greeting, error, loading } = useSelector((state) => state.greetings);

  useEffect(() => {
    dispatch(fetchRandomGreeting());
  }, []);

  return (
    <div className="container">
      <div className="row justify-content-center">
        <div className="col text-center" >
          {loading && <p>Loading...</p>}
          {error && <p className="text-danger">Error: {error}</p>}
          {greeting && <h1 className="text-dark mt-5">{greeting}</h1>}
        </div>
      </div>
    </div>
  );
};

export default Greetings;

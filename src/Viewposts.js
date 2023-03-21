import { useEffect, useState } from "react";
import { Button, Col, Row } from "react-bootstrap";
function Viewposts() {
  const [posts, setPosts] = useState([])
  
  useEffect(() => {
    fetch("http://127.0.0.1:4000/posts")
      .then((resp) => resp.json())
      .then((data) => setPosts(data));  
  }, []);


  console.log(posts);

  let postslist;

  if (posts.length > 0) {
    postslist = posts.map((elem, ind) => {
      return (
        <Col key={ind} md={4}>
        <div >
          <img height={300} width={250} src={elem.image_url} alt="Post pic" />
          <h2>{elem.caption}</h2>
        </div>
        </Col>
      );
    });
  } else {
    postslist = <h1>No Posts at the moment. Add some here</h1>;
  }

  return (
    <>
      Our Posts Today
      <Row>
      {postslist}
      </Row>
      
    </>
  );
}

export default Viewposts;

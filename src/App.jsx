import Profile from "./components/Profile";
import "bootstrap/dist/css/bootstrap.min.css";
import AboutThisApp from "./components/AboutThisApp";
import AboutOtherApps from "./components/AboutOtherApps";
function App() {

  return (
    <div style={{paddingTop: 50, paddingBottom: 50}} class="container flex align-items-center">
      <div class="d-flex align-items-center">
          <img style={{borderRadius: 100}} src="/avatar.jpg" alt="lukas profile picture" height="120" width="100" />
          <div class="justify-content-center">
            <div style={{paddingLeft: 50}}>
              <h1>Luka Vujasin</h1>
              <h5>luka.w.vujasin@gmail.com</h5>
            </div>
          </div>
      </div>
      <div>
        <Profile/>
        <p/>
        <AboutOtherApps/>
      </div>
    </div>
  )
}

export default App;

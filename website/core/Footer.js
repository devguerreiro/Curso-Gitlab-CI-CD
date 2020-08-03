const React = require("react");

class Footer extends React.Component {
  render() {
    return (
      <footer className="nav-footer" id="footer">
        <a target="_blank" rel="noreferrer noopener" className="fbOpenSource">
          <img
            src={`${this.props.config.baseUrl}img/coruja-nobackground.png`}
            alt="Coruja Logo"
            width="150"
            height="150"
          />
        </a>
        <section className="copyright">{this.props.config.copyright}</section>
      </footer>
    );
  }
}

module.exports = Footer;

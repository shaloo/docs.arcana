```js title="pages/index.tsx" hl_lines="1 21"
import ArcanaConnectCard from "../components/connectorCards/ArcanaConnectCard";
import CoinbaseWalletCard from "../components/connectorCards/CoinbaseWalletCard";
import GnosisSafeCard from "../components/connectorCards/GnosisSafeCard";
import MetaMaskCard from "../components/connectorCards/MetaMaskCard";
import NetworkCard from "../components/connectorCards/NetworkCard";
import WalletConnectCard from "../components/connectorCards/WalletConnectCard";
import WalletConnectV2Card from "../components/connectorCards/WalletConnectV2Card";
import ProviderExample from "../components/ProviderExample";

export default function Home() {
  return (
      <>
      <ProviderExample />
      <div>
        <MetaMaskCard />
        <WalletConnectV2Card />
        <WalletConnectCard />
        <CoinbaseWalletCard />
        <NetworkCard />
        <GnosisSafeCard />
        <ArcanaConnectCard />
      </div>
      );
      </>
}
```
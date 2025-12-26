import { Poppins } from "next/font/google";
import "./globals.css";
import Header from "../components/main/Header";
import Footer from "../components/main/Footer";
import ChatBox from "@/components/main/ChatBox";
import { defaultMetadata } from "@/utils/metadata";

const poppins = Poppins({
  variable: "--font-poppins",
  subsets: ["latin"],
  weight: ["300", "400", "600", "700"],
});

// Export the comprehensive metadata
export const metadata = defaultMetadata;

export default function RootLayout({ children }) {
  return (
    <html lang="fr">
      <body className={`${poppins.variable} relative antialiased bg-zinc-50 text-zinc-900`}>
        <Header />
        <ChatBox />
        <main>{children}</main>
        <Footer />
      </body>
    </html>
  );
}
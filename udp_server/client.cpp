#include <chrono>
#include <iostream>
#include <thread>
#include <boost/array.hpp>
#include <boost/asio.hpp>

#include "deadline_client.hpp"

using boost::asio::ip::udp;

int main(int argc, char* argv[])
{
  try
  {
    boost::asio::io_service io_service;

    udp::resolver resolver(io_service);
    udp::resolver::query query(udp::v4(), "127.0.0.1", "8081");
    udp::endpoint receiver_endpoint = *resolver.resolve(query);

    // udp::endpoint listen_endpoint(
    //    boost::asio::ip::address::from_string("127.0.0.1"), 8080);

    udp::socket sock(io_service);
    sock.open(udp::v4());

    DeadlineClient d_client(&io_service);

    boost::array<char, 1> send_buf  = {{0}};
    boost::array<char, 128> recv_buf;
    boost::system::error_code ec;

    for (;;) {

      std::cout << "Sending" << std::endl;
      d_client.get_socket()->send_to(boost::asio::buffer(send_buf), receiver_endpoint);

      std::cout << "Waiting" << std::endl;
      size_t len = d_client.receive(boost::asio::buffer(recv_buf),
          boost::posix_time::seconds(1), ec);

      std::cout.write(recv_buf.data(), len);

      // Sleeping
      std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    }
  }
  catch (std::exception& e)
  {
    std::cerr << e.what() << std::endl;
  }

  return 0;
}

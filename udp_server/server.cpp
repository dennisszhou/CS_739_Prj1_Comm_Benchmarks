#include <ctime>
#include <iostream>
#include <iterator>
#include <string>
#include <boost/array.hpp>
#include <boost/asio.hpp>
#include <boost/program_options.hpp>

using boost::asio::ip::udp;
namespace po = boost::program_options;

std::string make_daytime_string() {
  using namespace std; // For time_t, time and ctime;
  time_t now = time(0);
  return ctime(&now);
}

int main(int argc, char *argv[]) {
  int drop_rate = 0;

  try {
    po::options_description desc("Available options");
    desc.add_options()
      ("help", "produce help message")
      ("droprate", po::value<double>(), "set drop rate [0, 100]")
      ;

    po::variables_map vm;        
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);    

    if (vm.count("help")) {
      std::cout << desc << std::endl;
      return 1;
    }

    if (vm.count("droprate")) {
      drop_rate = vm["droprate"].as<double>();
      std::cout << "Setting drop_rate: " << drop_rate << std::endl;
    }
  }
  catch(std::exception& e) {
    std::cerr << "error: " << e.what() << std::endl;
    return 1;
  }
  catch(...) {
    std::cerr << "Exception of unknown type!" << std::endl;
  }

  // Server
  try {
    boost::asio::io_service io_service;

    udp::socket socket(io_service, udp::endpoint(udp::v4(), 8081));

    // boost::array<char, 1> ack_buf = {{0}};
    for (;;) {
      boost::array<char, 1500> recv_buf;
      udp::endpoint remote_endpoint;
      boost::system::error_code error;
      std::cout << "Receiving" << std::endl;
      socket.receive_from(boost::asio::buffer(recv_buf),
          remote_endpoint, 0, error);

      if (error && error != boost::asio::error::message_size)
        throw boost::system::system_error(error);

      if (std::rand() % 100 < drop_rate) {
        std::cout << "Dropping request" << std::endl;
        continue;
      }

      std::string message = make_daytime_string();

      std::cout << "Sending" << std::endl;
      boost::system::error_code ignored_error;
      socket.send_to(boost::asio::buffer(message),
          remote_endpoint, 0, ignored_error);
    }
  }
  catch (std::exception& e) {
    std::cerr << e.what() << std::endl;
  }

  return 0;
}

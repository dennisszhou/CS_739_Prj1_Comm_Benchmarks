#pragma once

#include <cstdlib>

#include <boost/array.hpp>
#include <boost/asio.hpp>
#include <boost/asio/deadline_timer.hpp>
#include <boost/asio/io_service.hpp>
#include <boost/asio/ip/udp.hpp>

using boost::asio::deadline_timer;
using boost::asio::ip::udp;

class DeadlineClient
{
  public:
    DeadlineClient(boost::asio::io_service *io_service);
        //const udp::endpoint &listen_endpoint);

    std::size_t receive(const boost::asio::mutable_buffer &buffer,
        boost::posix_time::time_duration timeout, boost::system::error_code &ec);

    udp::socket *get_socket();

  private:
    void check_deadline();
    static void handle_receive(
        const boost::system::error_code& ec, std::size_t length,
        boost::system::error_code* out_ec, std::size_t* out_length
    );

  private:
    boost::asio::io_service *io_service_;
    udp::socket socket_;
    deadline_timer deadline_;
};

#include <boost/bind.hpp>
#include <boost/date_time/posix_time/posix_time_types.hpp>
#include <iostream>

#include "deadline_client.hpp"

DeadlineClient::DeadlineClient(
    boost::asio::io_service *io_service)
  : io_service_(io_service),
    socket_(*io_service_),
    deadline_(*io_service_)
{
  socket_.open(udp::v4());
  deadline_.expires_at(boost::posix_time::pos_infin);
  check_deadline();
}

std::size_t DeadlineClient::receive(const boost::asio::mutable_buffer& buffer,
    boost::posix_time::time_duration timeout, boost::system::error_code& ec)
{
  // Set a deadline for the asynchronous operation.
  deadline_.expires_from_now(timeout);
  ec = boost::asio::error::would_block;
  std::size_t length = 0;

  socket_.async_receive(boost::asio::buffer(buffer),
      boost::bind(&DeadlineClient::handle_receive, _1, _2, &ec, &length));

  do {
    io_service_->run_one();
  }while (ec == boost::asio::error::would_block);

  return length;
}

udp::socket *DeadlineClient::get_socket()
{
  return &socket_;
}

void DeadlineClient::check_deadline()
{
  if (deadline_.expires_at() <= deadline_timer::traits_type::now())
  {
    socket_.cancel();
    deadline_.expires_at(boost::posix_time::pos_infin);
  }

  deadline_.async_wait(boost::bind(&DeadlineClient::check_deadline, this));
}

void DeadlineClient::handle_receive(
    const boost::system::error_code& ec, std::size_t length,
    boost::system::error_code* out_ec, std::size_t* out_length)
{
  *out_ec = ec;
  *out_length = length;
}

// Generated by gencpp from file uno/Test.msg
// DO NOT EDIT!


#ifndef UNO_MESSAGE_TEST_H
#define UNO_MESSAGE_TEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uno
{
template <class ContainerAllocator>
struct Test_
{
  typedef Test_<ContainerAllocator> Type;

  Test_()
    : x(0.0)
    , y(0.0)
    , label()  {
    }
  Test_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , label(_alloc)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _label_type;
  _label_type label;





  typedef boost::shared_ptr< ::uno::Test_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uno::Test_<ContainerAllocator> const> ConstPtr;

}; // struct Test_

typedef ::uno::Test_<std::allocator<void> > Test;

typedef boost::shared_ptr< ::uno::Test > TestPtr;
typedef boost::shared_ptr< ::uno::Test const> TestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uno::Test_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uno::Test_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uno::Test_<ContainerAllocator1> & lhs, const ::uno::Test_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.label == rhs.label;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uno::Test_<ContainerAllocator1> & lhs, const ::uno::Test_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uno

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::uno::Test_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uno::Test_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uno::Test_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uno::Test_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uno::Test_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uno::Test_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uno::Test_<ContainerAllocator> >
{
  static const char* value()
  {
    return "758d8c9fcfdf72f4de3bde06357b9c26";
  }

  static const char* value(const ::uno::Test_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x758d8c9fcfdf72f4ULL;
  static const uint64_t static_value2 = 0xde3bde06357b9c26ULL;
};

template<class ContainerAllocator>
struct DataType< ::uno::Test_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uno/Test";
  }

  static const char* value(const ::uno::Test_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uno::Test_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"string label\n"
;
  }

  static const char* value(const ::uno::Test_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uno::Test_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.label);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Test_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uno::Test_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uno::Test_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "label: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.label);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNO_MESSAGE_TEST_H

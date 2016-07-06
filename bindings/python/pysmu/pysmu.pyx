# distutils: language = c++

cdef extern from "libsmu/libsmu.hpp" namespace "smu":
    cdef cppclass Session:
        int m_active_devices

        int scan()
        int add_all()
        void configure(int sample_rate)
        void run(int samples)
        void start(int samples)
        void cancel()
        bint cancelled()
        void end()

    cdef cppclass Device:
        str serial()
        str fwver()
        str hwver()
        int set_mode(int channel, int mode)
        int samba_mode()
        int get_default_rate()
        int write_calibration(str path)

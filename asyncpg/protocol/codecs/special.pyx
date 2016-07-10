cdef void_decode(ConnectionSettings settings, const char* data, int32_t len):
    # Do nothing; void will be passed as NULL so this function
    # will never be called.
    pass


cdef init_special_codecs():
    register_core_codec(VOIDOID,
                        NULL,
                        <decode_func>&void_decode,
                        PG_FORMAT_BINARY)
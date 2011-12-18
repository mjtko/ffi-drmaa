require 'ffi'

module DRMAA
  module FFI
    extend ::FFI::Library

    ffi_lib 'libdrmaa.so'

    #TODO / Missing: 
    #
    # drmaa_delete_job_template
    # drmaa_strerror

    attach_function 'drmaa_version', [ :pointer , :pointer , :string , :ulong ], :int
    attach_function 'drmaa_init', [:string, :string, :ulong], :int
    attach_function 'drmaa_allocate_job_template', [:pointer, :string, :ulong], :int
    attach_function 'drmaa_get_attribute', [:pointer, :string, :pointer, :ulong, :string, :ulong], :int
    attach_function 'drmaa_get_attribute_names', [:pointer, :string, :ulong], :int
    attach_function 'drmaa_get_vector_attribute', [:pointer, :string, :pointer, :string, :ulong], :int
    attach_function 'drmaa_get_vector_attribute_names', [:pointer, :string, :ulong], :int

    attach_function 'drmaa_run_job', [:string, :ulong, :pointer, :string, :ulong], :int
    attach_function 'drmaa_set_attribute', [:pointer, :string, :string, :string, :ulong], :int
    attach_function 'drmaa_set_vector_attribute', [:pointer, :string, :pointer, :string, :ulong], :int
    attach_function 'drmaa_get_contact', [:string, :ulong, :string, :ulong], :int
    attach_function 'drmaa_get_DRM_system', [:string, :ulong, :string, :ulong], :int
    attach_function 'drmaa_get_DRMAA_implementation', [:string, :ulong, :string, :ulong], :int
    attach_function 'drmaa_wait', [:buffer_in,:string,:ulong,:pointer,:long,:pointer,:string,:ulong], :int
    attach_function 'drmaa_wifexited', [:pointer,:int,:string,:ulong], :int
    attach_function 'drmaa_wexitstatus', [:pointer,:int,:string,:ulong], :int
    attach_function 'drmaa_wifsignaled', [:pointer,:int,:string,:ulong], :int
    attach_function 'drmaa_wtermsig', [:string,:ulong,:int,:string,:ulong], :int
    attach_function 'drmaa_wifaborted', [:pointer,:int,:string,:ulong], :int
    attach_function 'drmaa_wcoredump', [:pointer,:int,:string,:ulong], :int
    attach_function 'drmaa_exit', [:string, :ulong], :int
    attach_function 'drmaa_run_bulk_jobs', [:pointer,:pointer,:int,:int,:int,:string,:ulong], :int
    attach_function 'drmaa_get_next_job_id', [ :pointer , :string , :ulong ], :int
    attach_function 'drmaa_release_job_ids', [ :pointer ], :void
    attach_function 'drmaa_get_next_attr_name', [ :pointer , :string, :ulong], :int
    attach_function 'drmaa_release_attr_names', [ :pointer ], :void
    attach_function 'drmaa_get_next_attr_value',[ :pointer, :string, :ulong], :int
    attach_function 'drmaa_release_attr_values',[ :pointer ], :void
    attach_function 'drmaa_control', [:string,:int,:string,:ulong], :int
    attach_function 'drmaa_job_ps', [ :string, :pointer , :string, :ulong], :int

    attach_function 'drmaa_synchronize', [:pointer,:long,:int,:string,:ulong], :int
  end
end

module DRMAA
  class DRMAAException < StandardError ; end
  class DRMAAInternalError < DRMAAException ; end
  class DRMAACommunicationError < DRMAAException ; end
  class DRMAAAuthenticationError < DRMAAException ; end
  class DRMAAInvalidArgumentError < DRMAAException ; end
  class DRMAANoActiveSessionError < DRMAAException ; end
  class DRMAANoMemoryError < DRMAAException ; end
  class DRMAAInvalidContactError < DRMAAException ; end
  class DRMAADefaultContactError < DRMAAException ; end
  class DRMAASessionInitError < DRMAAException ; end
  class DRMAAAlreadyActiveSessionError < DRMAAException ; end
  class DRMAASessionExitError < DRMAAException ; end
  class DRMAAInvalidAttributeFormatError < DRMAAException ; end
  class DRMAAInvalidAttributeValueError < DRMAAException ; end
  class DRMAAConflictingAttributeValuesError < DRMAAException ; end
  class DRMAATryLater < DRMAAException ; end
  class DRMAADeniedError < DRMAAException ; end
  class DRMAAInvalidJobError < DRMAAException ; end
  class DRMAAResumeInconsistent < DRMAAException ; end
  class DRMAASuspendInconsistent < DRMAAException ; end
  class DRMAAHoldInconsistent < DRMAAException ; end
  class DRMAAReleaseInconsistent < DRMAAException ; end
  class DRMAATimeoutExit < DRMAAException ; end
  
  class DRMAANoDefaultContactSelected < DRMAAException ; end
  class DRMAANoMoreElements < DRMAAException ; end
end

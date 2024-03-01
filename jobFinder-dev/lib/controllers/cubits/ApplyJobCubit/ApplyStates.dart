abstract class ApplyStates {}

class SuperApplyStates extends ApplyStates {}

class GettingTokenSuccessfully extends SuperApplyStates {}

class GettingTokenFailed extends SuperApplyStates {}

class GettingAllJobsSuccessfully extends SuperApplyStates {}

class GettingAllJobsFailed extends SuperApplyStates {}

class GettingJobByIdSuccessfully extends SuperApplyStates {}

class GettingJobByIdFailed extends SuperApplyStates {}

abstract class AuthStates {}

class AuthInitState extends AuthStates {}

class LoginSuccessfulState extends AuthStates {}

class LoginFailedState extends AuthStates {}

class RegisterSuccessfulState extends AuthStates {}

class GettingUserDataSuccessfully extends AuthStates {}

class GettingNotificationSuccess extends AuthStates {}

class GettingNotificationFailed extends AuthStates {}

class GettingSugesstedJobSuccessfully extends AuthStates {}

class GettingSugesstedJobFail extends AuthStates {}

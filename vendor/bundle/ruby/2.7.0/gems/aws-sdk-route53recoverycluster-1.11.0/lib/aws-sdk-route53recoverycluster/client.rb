# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53recoverycluster)

module Aws::Route53RecoveryCluster
  # An API client for Route53RecoveryCluster.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Route53RecoveryCluster::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :route53recoverycluster

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Get the state for a routing control. A routing control is a simple
    # on/off switch that you can use to route traffic to cells. When a
    # routing control state is On, traffic flows to a cell. When the state
    # is Off, traffic does not flow.
    #
    # Before you can create a routing control, you must first create a
    # cluster, and then host the control in a control panel on the cluster.
    # For more information, see [ Create routing control structures][1] in
    # the Amazon Route 53 Application Recovery Controller Developer Guide.
    # You access one of the endpoints for the cluster to get or update the
    # routing control state to redirect traffic for your application.
    #
    # *You must specify Regional endpoints when you work with API cluster
    # operations to get or update routing control states in Route 53 ARC.*
    #
    # To see a code example for getting a routing control state, including
    # accessing Regional cluster endpoints in sequence, see [API
    # examples][2] in the Amazon Route 53 Application Recovery Controller
    # Developer Guide.
    #
    # Learn more about working with routing controls in the following topics
    # in the Amazon Route 53 Application Recovery Controller Developer
    # Guide:
    #
    # * [ Viewing and updating routing control states][3]
    #
    # * [Working with routing controls in Route 53 ARC][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html
    # [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html
    # [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
    # [4]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
    #
    # @option params [required, String] :routing_control_arn
    #   The Amazon Resource Name (ARN) for the routing control that you want
    #   to get the state for.
    #
    # @return [Types::GetRoutingControlStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoutingControlStateResponse#routing_control_arn #routing_control_arn} => String
    #   * {Types::GetRoutingControlStateResponse#routing_control_state #routing_control_state} => String
    #   * {Types::GetRoutingControlStateResponse#routing_control_name #routing_control_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_routing_control_state({
    #     routing_control_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_control_arn #=> String
    #   resp.routing_control_state #=> String, one of "On", "Off"
    #   resp.routing_control_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/GetRoutingControlState AWS API Documentation
    #
    # @overload get_routing_control_state(params = {})
    # @param [Hash] params ({})
    def get_routing_control_state(params = {}, options = {})
      req = build_request(:get_routing_control_state, params)
      req.send_request(options)
    end

    # List routing control names and Amazon Resource Names (ARNs), as well
    # as the routing control state for each routing control, along with the
    # control panel name and control panel ARN for the routing controls. If
    # you specify a control panel ARN, this call lists the routing controls
    # in the control panel. Otherwise, it lists all the routing controls in
    # the cluster.
    #
    # A routing control is a simple on/off switch in Route 53 ARC that you
    # can use to route traffic to cells. When a routing control state is On,
    # traffic flows to a cell. When the state is Off, traffic does not flow.
    #
    # Before you can create a routing control, you must first create a
    # cluster, and then host the control in a control panel on the cluster.
    # For more information, see [ Create routing control structures][1] in
    # the Amazon Route 53 Application Recovery Controller Developer Guide.
    # You access one of the endpoints for the cluster to get or update the
    # routing control state to redirect traffic for your application.
    #
    # *You must specify Regional endpoints when you work with API cluster
    # operations to use this API operation to list routing controls in Route
    # 53 ARC.*
    #
    # Learn more about working with routing controls in the following topics
    # in the Amazon Route 53 Application Recovery Controller Developer
    # Guide:
    #
    # * [ Viewing and updating routing control states][2]
    #
    # * [Working with routing controls in Route 53 ARC][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html
    # [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
    # [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
    #
    # @option params [String] :control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel of the routing
    #   controls to list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of routing controls objects that you want to return with
    #   this call. The default value is 500.
    #
    # @return [Types::ListRoutingControlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingControlsResponse#routing_controls #routing_controls} => Array&lt;Types::RoutingControl&gt;
    #   * {Types::ListRoutingControlsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_controls({
    #     control_panel_arn: "Arn",
    #     next_token: "PageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_controls #=> Array
    #   resp.routing_controls[0].control_panel_arn #=> String
    #   resp.routing_controls[0].control_panel_name #=> String
    #   resp.routing_controls[0].routing_control_arn #=> String
    #   resp.routing_controls[0].routing_control_name #=> String
    #   resp.routing_controls[0].routing_control_state #=> String, one of "On", "Off"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ListRoutingControls AWS API Documentation
    #
    # @overload list_routing_controls(params = {})
    # @param [Hash] params ({})
    def list_routing_controls(params = {}, options = {})
      req = build_request(:list_routing_controls, params)
      req.send_request(options)
    end

    # Set the state of the routing control to reroute traffic. You can set
    # the value to be On or Off. When the state is On, traffic flows to a
    # cell. When the state is Off, traffic does not flow.
    #
    # With Route 53 ARC, you can add safety rules for routing controls,
    # which are safeguards for routing control state updates that help
    # prevent unexpected outcomes, like fail open traffic routing. However,
    # there are scenarios when you might want to bypass the routing control
    # safeguards that are enforced with safety rules that you've
    # configured. For example, you might want to fail over quickly for
    # disaster recovery, and one or more safety rules might be unexpectedly
    # preventing you from updating a routing control state to reroute
    # traffic. In a "break glass" scenario like this, you can override one
    # or more safety rules to change a routing control state and fail over
    # your application.
    #
    # The `SafetyRulesToOverride` property enables you override one or more
    # safety rules and update routing control states. For more information,
    # see [ Override safety rules to reroute traffic][1] in the Amazon Route
    # 53 Application Recovery Controller Developer Guide.
    #
    # *You must specify Regional endpoints when you work with API cluster
    # operations to get or update routing control states in Route 53 ARC.*
    #
    # To see a code example for getting a routing control state, including
    # accessing Regional cluster endpoints in sequence, see [API
    # examples][2] in the Amazon Route 53 Application Recovery Controller
    # Developer Guide.
    #
    # * [ Viewing and updating routing control states][3]
    #
    # * [Working with routing controls overall][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
    # [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html
    # [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
    # [4]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
    #
    # @option params [required, String] :routing_control_arn
    #   The Amazon Resource Name (ARN) for the routing control that you want
    #   to update the state for.
    #
    # @option params [required, String] :routing_control_state
    #   The state of the routing control. You can set the value to be On or
    #   Off.
    #
    # @option params [Array<String>] :safety_rules_to_override
    #   The Amazon Resource Names (ARNs) for the safety rules that you want to
    #   override when you're updating the state of a routing control. You can
    #   override one safety rule or multiple safety rules by including one or
    #   more ARNs, separated by commas.
    #
    #   For more information, see [ Override safety rules to reroute
    #   traffic][1] in the Amazon Route 53 Application Recovery Controller
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_control_state({
    #     routing_control_arn: "Arn", # required
    #     routing_control_state: "On", # required, accepts On, Off
    #     safety_rules_to_override: ["Arn"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlState AWS API Documentation
    #
    # @overload update_routing_control_state(params = {})
    # @param [Hash] params ({})
    def update_routing_control_state(params = {}, options = {})
      req = build_request(:update_routing_control_state, params)
      req.send_request(options)
    end

    # Set multiple routing control states. You can set the value for each
    # state to be On or Off. When the state is On, traffic flows to a cell.
    # When it's Off, traffic does not flow.
    #
    # With Route 53 ARC, you can add safety rules for routing controls,
    # which are safeguards for routing control state updates that help
    # prevent unexpected outcomes, like fail open traffic routing. However,
    # there are scenarios when you might want to bypass the routing control
    # safeguards that are enforced with safety rules that you've
    # configured. For example, you might want to fail over quickly for
    # disaster recovery, and one or more safety rules might be unexpectedly
    # preventing you from updating a routing control state to reroute
    # traffic. In a "break glass" scenario like this, you can override one
    # or more safety rules to change a routing control state and fail over
    # your application.
    #
    # The `SafetyRulesToOverride` property enables you override one or more
    # safety rules and update routing control states. For more information,
    # see [ Override safety rules to reroute traffic][1] in the Amazon Route
    # 53 Application Recovery Controller Developer Guide.
    #
    # *You must specify Regional endpoints when you work with API cluster
    # operations to get or update routing control states in Route 53 ARC.*
    #
    # To see a code example for getting a routing control state, including
    # accessing Regional cluster endpoints in sequence, see [API
    # examples][2] in the Amazon Route 53 Application Recovery Controller
    # Developer Guide.
    #
    # * [ Viewing and updating routing control states][3]
    #
    # * [Working with routing controls overall][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
    # [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html
    # [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
    # [4]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
    #
    # @option params [required, Array<Types::UpdateRoutingControlStateEntry>] :update_routing_control_state_entries
    #   A set of routing control entries that you want to update.
    #
    # @option params [Array<String>] :safety_rules_to_override
    #   The Amazon Resource Names (ARNs) for the safety rules that you want to
    #   override when you're updating routing control states. You can
    #   override one safety rule or multiple safety rules by including one or
    #   more ARNs, separated by commas.
    #
    #   For more information, see [ Override safety rules to reroute
    #   traffic][1] in the Amazon Route 53 Application Recovery Controller
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_control_states({
    #     update_routing_control_state_entries: [ # required
    #       {
    #         routing_control_arn: "Arn", # required
    #         routing_control_state: "On", # required, accepts On, Off
    #       },
    #     ],
    #     safety_rules_to_override: ["Arn"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStates AWS API Documentation
    #
    # @overload update_routing_control_states(params = {})
    # @param [Hash] params ({})
    def update_routing_control_states(params = {}, options = {})
      req = build_request(:update_routing_control_states, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-route53recoverycluster'
      context[:gem_version] = '1.11.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
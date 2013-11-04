ifneq ($(strip $(ENABLE_TVOS)), true)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES:= \
  talk/base/taskparent.cc \
  talk/base/virtualsocketserver.cc \
  talk/base/socketpool.cc \
  talk/base/httpserver.cc \
  talk/base/ratetracker.cc \
  talk/base/sslsocketfactory.cc \
  talk/base/sslstreamadapter.cc \
  talk/base/httpcommon.cc \
  talk/base/dbus.cc \
  talk/base/proxydetect.cc \
  talk/base/socketadapters.cc \
  talk/base/unixfilesystem.cc \
  talk/base/diskcache.cc \
  talk/base/signalthread.cc \
  talk/base/event.cc \
  talk/base/transformadapter.cc \
  talk/base/opensslidentity.cc \
  talk/base/natsocketfactory.cc \
  talk/base/posix.cc \
  talk/base/base64.cc \
  talk/base/physicalsocketserver.cc \
  talk/base/flags.cc \
  talk/base/basicpacketsocketfactory.cc \
  talk/base/taskrunner.cc \
  talk/base/fileutils.cc \
  talk/base/asynchttprequest.cc \
  talk/base/httpclient.cc \
  talk/base/optionsfile.cc \
  talk/base/macconversion.cc \
  talk/base/socketstream.cc \
  talk/base/asyncudpsocket.cc \
  talk/base/task.cc \
  talk/base/proxyinfo.cc \
  talk/base/testclient.cc \
  talk/base/cpuid.cc \
  talk/base/md5.cc \
  talk/base/openssladapter.cc \
  talk/base/messagehandler.cc \
  talk/base/checks.cc \
  talk/base/httprequest.cc \
  talk/base/sharedexclusivelock.cc \
  talk/base/autodetectproxy.cc \
  talk/base/linux.cc \
  talk/base/logging.cc \
  talk/base/host.cc \
  talk/base/messagequeue.cc \
  talk/base/pathutils.cc \
  talk/base/bytebuffer.cc \
  talk/base/proxyserver.cc \
  talk/base/common.cc \
  talk/base/json.cc \
  talk/base/ssladapter.cc \
  talk/base/time.cc \
  talk/base/asynctcpsocket.cc \
  talk/base/nethelpers.cc \
  talk/base/firewallsocketserver.cc \
  talk/base/urlencode.cc \
  talk/base/stringencode.cc \
  talk/base/versionparsing.cc \
  talk/base/filelock.cc \
  talk/base/stringutils.cc \
  talk/base/socketaddress.cc \
  talk/base/asyncsocket.cc \
  talk/base/natserver.cc \
  talk/base/bandwidthsmoother.cc \
  talk/base/multipart.cc \
  talk/base/worker.cc \
  talk/base/ipaddress.cc \
  talk/base/helpers.cc \
  talk/base/stream.cc \
  talk/base/timing.cc \
  talk/base/httpbase.cc \
  talk/base/thread.cc \
  talk/base/network.cc \
  talk/base/cpumonitor.cc \
  talk/base/nattypes.cc \
  talk/base/asyncfile.cc \
  talk/base/socketaddresspair.cc \
  talk/base/stringdigest.cc \
  talk/base/opensslstreamadapter.cc \
  talk/base/systeminfo.cc \
  talk/base/sslidentity.cc \
  talk/p2p/base/stunserver.cc \
  talk/p2p/base/stunport.cc \
  talk/p2p/base/p2ptransportchannel.cc \
  talk/p2p/base/transport.cc \
  talk/p2p/base/rawtransport.cc \
  talk/p2p/base/portallocator.cc \
  talk/p2p/base/sessionmessages.cc \
  talk/p2p/base/portproxy.cc \
  talk/p2p/base/sessiondescription.cc \
  talk/p2p/base/pseudotcp.cc \
  talk/p2p/base/stun.cc \
  talk/p2p/base/p2ptransport.cc \
  talk/p2p/base/relayserver.cc \
  talk/p2p/base/tcpport.cc \
  talk/p2p/base/portallocatorsessionproxy.cc \
  talk/p2p/base/relayport.cc \
  talk/p2p/base/sessionmanager.cc \
  talk/p2p/base/stunrequest.cc \
  talk/p2p/base/transportchannelproxy.cc \
  talk/p2p/base/port.cc \
  talk/p2p/base/session.cc \
  talk/p2p/base/rawtransportchannel.cc \
  talk/p2p/base/constants.cc \
  talk/p2p/base/transportchannel.cc \
  talk/p2p/base/parsing.cc \
  talk/p2p/base/udpport.cc \
  talk/p2p/client/httpportallocator.cc \
  talk/p2p/client/socketmonitor.cc \
  talk/p2p/client/basicportallocator.cc \
  talk/p2p/client/connectivitychecker.cc \
  talk/session/tunnel/pseudotcpchannel.cc \
  talk/session/tunnel/tunnelsessionclient.cc \
  talk/session/tunnel/securetunnelsessionclient.cc \
  talk/xmllite/qname.cc \
  talk/xmllite/xmlprinter.cc \
  talk/xmllite/xmlelement.cc \
  talk/xmllite/xmlnsstack.cc \
  talk/xmllite/xmlbuilder.cc \
  talk/xmllite/xmlparser.cc \
  talk/xmllite/xmlconstants.cc \
  talk/xmpp/pubsubclient.cc \
  talk/xmpp/xmppengineimpl_iq.cc \
  talk/xmpp/mucroomlookuptask.cc \
  talk/xmpp/receivetask.cc \
  talk/xmpp/xmpptask.cc \
  talk/xmpp/chatroommoduleimpl.cc \
  talk/xmpp/moduleimpl.cc \
  talk/xmpp/xmppstanzaparser.cc \
  talk/xmpp/saslmechanism.cc \
  talk/xmpp/mucroomhistorytask.cc \
  talk/xmpp/mucroomconfigtask.cc \
  talk/xmpp/iqtask.cc \
  talk/xmpp/ratelimitmanager.cc \
  talk/xmpp/jid.cc \
  talk/xmpp/xmppengineimpl.cc \
  talk/xmpp/xmppclient.cc \
  talk/xmpp/xmpplogintask.cc \
  talk/xmpp/hangoutpubsubclient.cc \
  talk/xmpp/pubsub_task.cc \
  talk/xmpp/constants.cc \
  talk/xmpp/pubsubtasks.cc \
  talk/xmpp/rostermoduleimpl.cc \

LOCAL_C_INCLUDES := \
	bionic \
  $(COMMON_EXTERNAL_DIR)/gnu-libstdc++/include \
  $(COMMON_EXTERNAL_DIR)/stlport/stlport \
  $(COMMON_EXTERNAL_DIR)/openssl/include \
  $(COMMON_EXTERNAL_DIR)/json/include \
  $(COMMON_EXTERNAL_DIR)/expat/lib \

LOCAL_CFLAGS := \
  -DEXPAT_RELATIVE_PATH \
  -DFEATURE_ENABLE_SSL \
  -DHAVE_OPENSSL_SSL_H \
  -DPOSIX \
  -DSSL_USE_OPENSSL \
  -O2 -g0 \

LOCAL_SHARED_LIBRARIES := \
  libcutils \
  libstlport \
  libstdc++ \
  libutils \
  libssl \
  libcrypto \
  libexpat \
  libJson \
  libapi.$(strip $(SDK_VERSION)) \

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libjingle

LOCAL_MODULE_TAGS := eng debug optional

common_CFLAGS := -gstabs -O0 -g -c
LOCAL_CPPFLAGS += $(common_CFLAGS)

include $(BUILD_SHARED_LIBRARY)
endif #ENABLE_TVOS

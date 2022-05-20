.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfigOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANNEL_FIELD_NUMBER:I = 0x4

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

.field public static final LOCALIP_FIELD_NUMBER:I = 0x7

.field public static final MACADDR_FIELD_NUMBER:I = 0x5

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PWD_FIELD_NUMBER:I = 0x2

.field public static final REMOTEIP_FIELD_NUMBER:I = 0x6

.field public static final SSID_FIELD_NUMBER:I = 0x1

.field public static final USE5GBAND_FIELD_NUMBER:I = 0x3


# instance fields
.field public channel_:I

.field public localIp_:Ljava/lang/String;

.field public macAddr_:Ljava/lang/String;

.field public pwd_:Ljava/lang/String;

.field public remoteIp_:Ljava/lang/String;

.field public ssid_:Ljava/lang/String;

.field public use5GBand_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    .line 3
    const-class v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->pwd_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->macAddr_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->remoteIp_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->localIp_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$17400()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object v0
.end method

.method public static synthetic access$17500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setSsid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$17600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->clearSsid()V

    return-void
.end method

.method public static synthetic access$17700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setSsidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$17800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setPwd(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$17900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->clearPwd()V

    return-void
.end method

.method public static synthetic access$18000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setPwdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$18100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setUse5GBand(Z)V

    return-void
.end method

.method public static synthetic access$18200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->clearUse5GBand()V

    return-void
.end method

.method public static synthetic access$18300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setChannel(I)V

    return-void
.end method

.method public static synthetic access$18400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->clearChannel()V

    return-void
.end method

.method public static synthetic access$18500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setMacAddr(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$18600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->clearMacAddr()V

    return-void
.end method

.method public static synthetic access$18700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setMacAddrBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$18800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setRemoteIp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$18900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->clearRemoteIp()V

    return-void
.end method

.method public static synthetic access$19000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$19100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setLocalIp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->clearLocalIp()V

    return-void
.end method

.method public static synthetic access$19300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->setLocalIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearChannel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->channel_:I

    return-void
.end method

.method private clearLocalIp()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->localIp_:Ljava/lang/String;

    return-void
.end method

.method private clearMacAddr()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->macAddr_:Ljava/lang/String;

    return-void
.end method

.method private clearPwd()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->pwd_:Ljava/lang/String;

    return-void
.end method

.method private clearRemoteIp()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getRemoteIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-void
.end method

.method private clearSsid()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->ssid_:Ljava/lang/String;

    return-void
.end method

.method private clearUse5GBand()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->use5GBand_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->channel_:I

    return-void
.end method

.method private setLocalIp(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->localIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setLocalIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->localIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setMacAddr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->macAddr_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setMacAddrBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->macAddr_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setPwd(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->pwd_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setPwdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->pwd_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setRemoteIp(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setSsid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->ssid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setSsidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->ssid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setUse5GBand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->use5GBand_:Z

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ssid_"

    aput-object v0, p1, p3

    const-string p3, "pwd_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "use5GBand_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "channel_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "macAddr_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "remoteIp_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "localIp_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    const-string p3, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0007\u0004\u0004\u0005\u0208\u0006\u0208\u0007\u0208"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-direct {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->channel_:I

    return v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->localIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->localIp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->macAddr_:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->macAddr_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->pwd_:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->pwd_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->remoteIp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->ssid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUse5GBand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->use5GBand_:Z

    return v0
.end method

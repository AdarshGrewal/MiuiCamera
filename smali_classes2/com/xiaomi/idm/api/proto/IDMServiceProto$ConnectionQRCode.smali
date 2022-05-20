.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionQRCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCodeOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANNEL_FIELD_NUMBER:I = 0x2

.field public static final CONNTYPE_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

.field public static final IDHASH_FIELD_NUMBER:I = 0x6

.field public static final MACADDR_FIELD_NUMBER:I = 0x3

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PWD_FIELD_NUMBER:I = 0x4

.field public static final SSID_FIELD_NUMBER:I = 0x5


# instance fields
.field public channel_:I

.field public connType_:I

.field public idHash_:Ljava/lang/String;

.field public macAddr_:Ljava/lang/String;

.field public pwd_:Ljava/lang/String;

.field public ssid_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    .line 3
    const-class v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->macAddr_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->pwd_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->ssid_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->idHash_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$21100()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object v0
.end method

.method public static synthetic access$21200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setConnType(I)V

    return-void
.end method

.method public static synthetic access$21300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->clearConnType()V

    return-void
.end method

.method public static synthetic access$21400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setChannel(I)V

    return-void
.end method

.method public static synthetic access$21500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->clearChannel()V

    return-void
.end method

.method public static synthetic access$21600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setMacAddr(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$21700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->clearMacAddr()V

    return-void
.end method

.method public static synthetic access$21800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setMacAddrBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$21900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setPwd(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$22000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->clearPwd()V

    return-void
.end method

.method public static synthetic access$22100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setPwdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$22200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setSsid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$22300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->clearSsid()V

    return-void
.end method

.method public static synthetic access$22400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setSsidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$22500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setIdHash(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$22600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->clearIdHash()V

    return-void
.end method

.method public static synthetic access$22700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->setIdHashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearChannel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->channel_:I

    return-void
.end method

.method private clearConnType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->connType_:I

    return-void
.end method

.method private clearIdHash()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getIdHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->idHash_:Ljava/lang/String;

    return-void
.end method

.method private clearMacAddr()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->macAddr_:Ljava/lang/String;

    return-void
.end method

.method private clearPwd()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->pwd_:Ljava/lang/String;

    return-void
.end method

.method private clearSsid()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->ssid_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->channel_:I

    return-void
.end method

.method private setConnType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->connType_:I

    return-void
.end method

.method private setIdHash(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setIdHashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->idHash_:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->macAddr_:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->macAddr_:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->pwd_:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->pwd_:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->ssid_:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->ssid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
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
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "connType_"

    aput-object v0, p1, p3

    const-string p3, "channel_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "macAddr_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "pwd_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "ssid_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "idHash_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    const-string p3, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-direct {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;-><init>()V

    return-object p1

    nop

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
    iget v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->channel_:I

    return v0
.end method

.method public getConnType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->connType_:I

    return v0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->idHash_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->idHash_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->macAddr_:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->macAddr_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->pwd_:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->pwd_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->ssid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

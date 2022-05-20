.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDMRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x2

.field public static final CLIENTID_FIELD_NUMBER:I = 0x4

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUESTID_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_FIELD_NUMBER:I = 0xf

.field public static final UUID_FIELD_NUMBER:I = 0x1


# instance fields
.field public aid_:I

.field public clientId_:Ljava/lang/String;

.field public requestId_:Ljava/lang/String;

.field public request_:Lcom/google/protobuf/ByteString;

.field public uuid_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    .line 3
    const-class v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->uuid_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->requestId_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clientId_:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->request_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$4200()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object v0
.end method

.method public static synthetic access$4300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clearUuid()V

    return-void
.end method

.method public static synthetic access$4500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setUuidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setAid(I)V

    return-void
.end method

.method public static synthetic access$4700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clearAid()V

    return-void
.end method

.method public static synthetic access$4800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setRequestId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clearRequestId()V

    return-void
.end method

.method public static synthetic access$5000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setRequestIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setClientId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clearClientId()V

    return-void
.end method

.method public static synthetic access$5300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setClientIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->setRequest(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clearRequest()V

    return-void
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->aid_:I

    return-void
.end method

.method private clearClientId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clientId_:Ljava/lang/String;

    return-void
.end method

.method private clearRequest()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequest()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->request_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRequestId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->requestId_:Ljava/lang/String;

    return-void
.end method

.method private clearUuid()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->uuid_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->aid_:I

    return-void
.end method

.method private setClientId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clientId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setClientIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clientId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setRequest(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->request_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setRequestId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->requestId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setRequestIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->requestId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->uuid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setUuidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->uuid_:Ljava/lang/String;

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
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "uuid_"

    aput-object v0, p1, p3

    const-string p3, "aid_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "requestId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "clientId_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "request_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u000f\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0004\u0003\u0208\u0004\u0208\u000f\n"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-direct {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;-><init>()V

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

.method public getAid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->aid_:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->clientId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->request_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->requestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->requestId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->uuid_:Ljava/lang/String;

    return-object v0
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->uuid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

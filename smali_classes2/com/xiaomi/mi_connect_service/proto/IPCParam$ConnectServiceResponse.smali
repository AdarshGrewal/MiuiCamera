.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectServiceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

.field public static final IDMCONNECTSERVICERESPONSE_FIELD_NUMBER:I = 0x1

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    .line 3
    const-class v1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$13900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object v0
.end method

.method public static synthetic access$14000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V

    return-void
.end method

.method public static synthetic access$14100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;)V

    return-void
.end method

.method public static synthetic access$14200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->mergeIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V

    return-void
.end method

.method public static synthetic access$14300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->clearIdmConnectServiceResponse()V

    return-void
.end method

.method private clearIdmConnectServiceResponse()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object v0
.end method

.method private mergeIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    .line 4
    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;->newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    return-void
.end method

.method private setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "idmConnectServiceResponse_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-direct {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;-><init>()V

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

.method public getIdmConnectServiceResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasIdmConnectServiceResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->idmConnectServiceResponse_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

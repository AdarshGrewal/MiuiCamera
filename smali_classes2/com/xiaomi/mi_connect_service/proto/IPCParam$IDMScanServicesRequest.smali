.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDMScanServicesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENTID_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICEFILTER_FIELD_NUMBER:I = 0x2


# instance fields
.field public clientId_:Ljava/lang/String;

.field public serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    .line 3
    const-class v1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clientId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$27900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object v0
.end method

.method public static synthetic access$28000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->setClientId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$28100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clearClientId()V

    return-void
.end method

.method public static synthetic access$28200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->setClientIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$28300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-void
.end method

.method public static synthetic access$28400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;)V

    return-void
.end method

.method public static synthetic access$28500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->mergeServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-void
.end method

.method public static synthetic access$28600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clearServiceFilter()V

    return-void
.end method

.method private clearClientId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clientId_:Ljava/lang/String;

    return-void
.end method

.method private clearServiceFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object v0
.end method

.method private mergeServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    .line 4
    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setClientId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clientId_:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clientId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    return-void
.end method

.method private setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "clientId_"

    aput-object v0, p1, p3

    const-string p3, "serviceFilter_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-direct {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;-><init>()V

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

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->clientId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServiceFilter()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasServiceFilter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->serviceFilter_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

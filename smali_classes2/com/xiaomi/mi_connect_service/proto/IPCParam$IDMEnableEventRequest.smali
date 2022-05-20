.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDMEnableEventRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

.field public static final EID_FIELD_NUMBER:I = 0x3

.field public static final ENABLE_FIELD_NUMBER:I = 0x4

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICEUUID_FIELD_NUMBER:I = 0x1


# instance fields
.field public eid_:I

.field public enable_:Z

.field public serviceUuid_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    .line 3
    const-class v1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->serviceUuid_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$31400()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object v0
.end method

.method public static synthetic access$31500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->setServiceUuid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$31600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->clearServiceUuid()V

    return-void
.end method

.method public static synthetic access$31700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->setServiceUuidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$31800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->setEid(I)V

    return-void
.end method

.method public static synthetic access$31900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->clearEid()V

    return-void
.end method

.method public static synthetic access$32000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->setEnable(Z)V

    return-void
.end method

.method public static synthetic access$32100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->clearEnable()V

    return-void
.end method

.method private clearEid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->eid_:I

    return-void
.end method

.method private clearEnable()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->enable_:Z

    return-void
.end method

.method private clearServiceUuid()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getServiceUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->serviceUuid_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->eid_:I

    return-void
.end method

.method private setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->enable_:Z

    return-void
.end method

.method private setServiceUuid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->serviceUuid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setServiceUuidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->serviceUuid_:Ljava/lang/String;

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "serviceUuid_"

    aput-object v0, p1, p3

    const-string p3, "eid_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "enable_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u0208\u0003\u0004\u0004\u0007"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-direct {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;-><init>()V

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

.method public getEid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->eid_:I

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->enable_:Z

    return v0
.end method

.method public getServiceUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->serviceUuid_:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->serviceUuid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

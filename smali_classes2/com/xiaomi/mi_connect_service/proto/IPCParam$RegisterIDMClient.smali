.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClientOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegisterIDMClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClientOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

.field public static final IDENTIFY_FIELD_NUMBER:I = 0x1

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVERSION_FIELD_NUMBER:I = 0xf


# instance fields
.field public identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

.field public sdkVersion_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    .line 3
    const-class v1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$3200()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object v0
.end method

.method public static synthetic access$3300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->setIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->setIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->mergeIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->clearIdentify()V

    return-void
.end method

.method public static synthetic access$3700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->setSdkVersion(I)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->clearSdkVersion()V

    return-void
.end method

.method private clearIdentify()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->sdkVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object v0
.end method

.method private mergeIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    .line 4
    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    return-void
.end method

.method private setIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setSdkVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->sdkVersion_:I

    return-void
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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "identify_"

    aput-object v0, p1, p3

    const-string p3, "sdkVersion_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u000f\u0002\u0000\u0000\u0000\u0001\t\u000f\u0004"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-direct {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;-><init>()V

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

.method public getIdentify()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->sdkVersion_:I

    return v0
.end method

.method public hasIdentify()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->identify_:Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

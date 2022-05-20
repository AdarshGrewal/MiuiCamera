.class public final Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DataProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$ResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final STR_FIELD_NUMBER:I = 0x1


# instance fields
.field public str_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    .line 3
    const-class v1, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->str_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->setStr(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->clearStr()V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->setStrBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearStr()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->getDefaultInstance()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->getStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->str_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setStr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->str_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setStrBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->str_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "str_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;-><init>(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-direct {p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;-><init>()V

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

.method public getStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->str_:Ljava/lang/String;

    return-object v0
.end method

.method public getStrBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->str_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

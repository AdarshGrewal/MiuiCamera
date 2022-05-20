.class public final Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RMIBasicDataType.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/RMIBasicDataType$LongOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/RMIBasicDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Long"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$LongOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final V_FIELD_NUMBER:I = 0x1


# instance fields
.field public v_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    .line 3
    const-class v1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$400()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->setV(J)V

    return-void
.end method

.method public static synthetic access$600(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->clearV()V

    return-void
.end method

.method private clearV()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->v_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setV(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->v_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "v_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0002"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;-><init>(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-direct {p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;-><init>()V

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

.method public getV()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->v_:J

    return-wide v0
.end method

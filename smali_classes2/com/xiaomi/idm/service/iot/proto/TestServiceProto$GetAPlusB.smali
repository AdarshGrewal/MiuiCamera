.class public final Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TestServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusBOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/TestServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAPlusB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusBOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field public static final A_FIELD_NUMBER:I = 0x2

.field public static final B_FIELD_NUMBER:I = 0x3

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a_:I

.field public aid_:I

.field public b_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    .line 3
    const-class v1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$1300()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object v0
.end method

.method public static synthetic access$1400(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->setAid(I)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->clearAid()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->setA(I)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->clearA()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->setB(I)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->clearB()V

    return-void
.end method

.method private clearA()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->a_:I

    return-void
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->aid_:I

    return-void
.end method

.method private clearB()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->b_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setA(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->a_:I

    return-void
.end method

.method private setAid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->aid_:I

    return-void
.end method

.method private setB(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->b_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "aid_"

    aput-object v0, p1, p3

    const-string p3, "a_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "b_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-direct {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;-><init>()V

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

.method public getA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->a_:I

    return v0
.end method

.method public getAid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->aid_:I

    return v0
.end method

.method public getB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->b_:I

    return v0
.end method

.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnInviteConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnectionOrBuilder;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

.field public static final INVITESTR_FIELD_NUMBER:I = 0x2

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code_:I

.field public inviteStr_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    .line 3
    const-class v1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->inviteStr_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$21900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object v0
.end method

.method public static synthetic access$22000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->setCode(I)V

    return-void
.end method

.method public static synthetic access$22100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->clearCode()V

    return-void
.end method

.method public static synthetic access$22200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->setInviteStr(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$22300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->clearInviteStr()V

    return-void
.end method

.method public static synthetic access$22400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->setInviteStrBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->code_:I

    return-void
.end method

.method private clearInviteStr()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->getInviteStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->inviteStr_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->code_:I

    return-void
.end method

.method private setInviteStr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->inviteStr_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setInviteStrBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->inviteStr_:Ljava/lang/String;

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "code_"

    aput-object v0, p1, p3

    const-string p3, "inviteStr_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0208"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    invoke-direct {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;-><init>()V

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

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->code_:I

    return v0
.end method

.method public getInviteStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->inviteStr_:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteStrBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->inviteStr_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

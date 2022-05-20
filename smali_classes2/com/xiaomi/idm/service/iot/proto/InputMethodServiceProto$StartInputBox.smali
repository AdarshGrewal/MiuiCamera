.class public final Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InputMethodServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartInputBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBoxOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field public static final CHARACTERTYPE_FIELD_NUMBER:I = 0x7

.field public static final CLIENTID_FIELD_NUMBER:I = 0x2

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

.field public static final IMEOPTIONS_FIELD_NUMBER:I = 0x4

.field public static final INPUTCONTENT_FIELD_NUMBER:I = 0x5

.field public static final INPUTTEXTLENGTH_FIELD_NUMBER:I = 0x6

.field public static final METHODTYPE_FIELD_NUMBER:I = 0x3

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aid_:I

.field public characterType_:I

.field public clientId_:Ljava/lang/String;

.field public imeOptions_:I

.field public inputContent_:Ljava/lang/String;

.field public inputTextLength_:I

.field public methodType_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    .line 3
    const-class v1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clientId_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputContent_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setAid(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setInputContent(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clearInputContent()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setInputContentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setInputTextLength(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clearInputTextLength()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setCharacterType(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clearCharacterType()V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clearAid()V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setClientId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clearClientId()V

    return-void
.end method

.method public static synthetic access$500(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setClientIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setMethodType(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clearMethodType()V

    return-void
.end method

.method public static synthetic access$800(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->setImeOptions(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clearImeOptions()V

    return-void
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->aid_:I

    return-void
.end method

.method private clearCharacterType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->characterType_:I

    return-void
.end method

.method private clearClientId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clientId_:Ljava/lang/String;

    return-void
.end method

.method private clearImeOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->imeOptions_:I

    return-void
.end method

.method private clearInputContent()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getInputContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputContent_:Ljava/lang/String;

    return-void
.end method

.method private clearInputTextLength()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputTextLength_:I

    return-void
.end method

.method private clearMethodType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->methodType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->aid_:I

    return-void
.end method

.method private setCharacterType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->characterType_:I

    return-void
.end method

.method private setClientId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clientId_:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clientId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setImeOptions(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->imeOptions_:I

    return-void
.end method

.method private setInputContent(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputContent_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setInputContentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputContent_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setInputTextLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputTextLength_:I

    return-void
.end method

.method private setMethodType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->methodType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "aid_"

    aput-object v0, p1, p3

    const-string p3, "clientId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "methodType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "imeOptions_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "inputContent_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "inputTextLength_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "characterType_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    const-string p3, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0004\u0002\u0208\u0003\u0004\u0004\u0004\u0005\u0208\u0006\u0004\u0007\u0004"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-direct {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;-><init>()V

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
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->aid_:I

    return v0
.end method

.method public getCharacterType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->characterType_:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->clientId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->imeOptions_:I

    return v0
.end method

.method public getInputContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputContentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputContent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInputTextLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->inputTextLength_:I

    return v0
.end method

.method public getMethodType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->methodType_:I

    return v0
.end method

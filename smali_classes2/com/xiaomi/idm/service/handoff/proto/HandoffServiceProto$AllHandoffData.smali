.class public final Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllHandoffData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

.field public static final HANDOFFDATALIST_FIELD_NUMBER:I = 0x2

.field public static final IDHASH_FIELD_NUMBER:I = 0x1

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;"
        }
    .end annotation
.end field

.field public idHash_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    .line 3
    const-class v1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->idHash_:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$1000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->addHandoffDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->addHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->addHandoffDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->addHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->addAllHandoffDataList(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->clearHandoffDataList()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->removeHandoffDataList(I)V

    return-void
.end method

.method public static synthetic access$400()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->setIdHash(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->clearIdHash()V

    return-void
.end method

.method public static synthetic access$700(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->setIdHashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->setHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->setHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V

    return-void
.end method

.method private addAllHandoffDataList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method private addHandoffDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addHandoffDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private clearHandoffDataList()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearIdHash()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getIdHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->idHash_:Ljava/lang/String;

    return-void
.end method

.method private ensureHandoffDataListIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeHandoffDataList(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->ensureHandoffDataListIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private setIdHash(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private setIdHashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->idHash_:Ljava/lang/String;

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
    sget-object p2, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "idHash_"

    aput-object v0, p1, p3

    const-string p3, "handoffDataList_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;-><init>(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-direct {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;-><init>()V

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

.method public getHandoffDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p1
.end method

.method public getHandoffDataListCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getHandoffDataListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getHandoffDataListOrBuilder(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;

    return-object p1
.end method

.method public getHandoffDataListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->handoffDataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->idHash_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->idHash_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

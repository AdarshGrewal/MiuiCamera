.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommandsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPropertyCommands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;,
        Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$PropertyMapDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommandsOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTYMAP_FIELD_NUMBER:I = 0x2


# instance fields
.field public aid_:I

.field public propertyMap_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    .line 3
    const-class v1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method public static synthetic access$2100()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object v0
.end method

.method public static synthetic access$2200(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->setAid(I)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->clearAid()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->getMutablePropertyMapMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->aid_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object v0
.end method

.method private getMutablePropertyMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->internalGetMutablePropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutablePropertyMap()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->aid_:I

    return-void
.end method


# virtual methods
.method public containsPropertyMap(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "aid_"

    aput-object v0, p1, p3

    const-string p3, "propertyMap_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    sget-object p3, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$PropertyMapDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u0004\u00022"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;

    invoke-direct {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;-><init>()V

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
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->aid_:I

    return v0
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->getPropertyMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyMapCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public getPropertyMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

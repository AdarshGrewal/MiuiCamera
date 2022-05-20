.class public final Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
.super Ljava/lang/Object;
.source "IDMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CSParamBuilder"
.end annotation


# instance fields
.field public commDataType:I

.field public commType:I

.field public connLevel:I

.field public privateData:[B

.field public serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

.field public verifySameAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commType:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commDataType:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->connLevel:I

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->verifySameAccount:Z

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->privateData:[B

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method


# virtual methods
.method public commDataType(I)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commDataType:I

    return-object p0
.end method

.method public commType(I)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commType:I

    return-object p0
.end method

.method public connLevel(I)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->connLevel:I

    return-object p0
.end method

.method public privateData([B)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->privateData:[B

    return-object p0
.end method

.method public verifySameAccount(Z)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->verifySameAccount:Z

    return-object p0
.end method

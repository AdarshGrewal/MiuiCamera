.class public final Lcom/xiaomi/mi_connect_sdk/api/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    }
.end annotation


# instance fields
.field public final advData:[B

.field public final appCommDataType:I

.field public final appCommType:I

.field public final appRoleType:I

.field public final commData:[B

.field public final discAppIds:[I

.field public final discType:I


# direct methods
.method public constructor <init>(III[B[BI[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appRoleType:I

    .line 3
    iput p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discType:I

    .line 4
    iput p3, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommType:I

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->advData:[B

    goto :goto_0

    :cond_0
    new-array p2, p1, [B

    .line 6
    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->advData:[B

    :goto_0
    if-eqz p5, :cond_1

    .line 7
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->commData:[B

    goto :goto_1

    :cond_1
    new-array p2, p1, [B

    .line 8
    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->commData:[B

    .line 9
    :goto_1
    iput p6, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommDataType:I

    if-eqz p7, :cond_2

    .line 10
    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discAppIds:[I

    goto :goto_2

    :cond_2
    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discAppIds:[I

    :goto_2
    return-void
.end method


# virtual methods
.method public getAdvData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->advData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getAppCommDataType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommDataType:I

    return v0
.end method

.method public getAppCommType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommType:I

    return v0
.end method

.method public getAppRoleType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appRoleType:I

    return v0
.end method

.method public getCommData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->commData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDiscAppIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discAppIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getDiscType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discType:I

    return v0
.end method

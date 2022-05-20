.class public Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;
.super Ljava/lang/Object;
.source "PayloadConfig.java"


# instance fields
.field public endPointId:I

.field public payload:[B

.field public roleType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPointId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->endPointId:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->payload:[B

    return-object v0
.end method

.method public getRoleType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->roleType:I

    return v0
.end method

.method public setEndPointId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->endPointId:I

    return-void
.end method

.method public setPayload([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->payload:[B

    return-void
.end method

.method public setRoleType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->roleType:I

    return-void
.end method

.class public Lcom/android/camera/data/cloud/DataCloudItemMIVI;
.super Ljava/lang/Object;
.source "DataCloudItemMIVI.java"

# interfaces
.implements Lcom/android/camera/resource/BaseResourceCacheable;


# static fields
.field public static final SOFT_EXPIRE_TIME:J = 0x2932e00L


# instance fields
.field public mData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheExpireTime()J
    .locals 2

    const-wide/32 v0, 0x2932e00

    return-wide v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemMIVI;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/cloud/DataCloudItemMIVI;->mData:Ljava/lang/String;

    return-void
.end method

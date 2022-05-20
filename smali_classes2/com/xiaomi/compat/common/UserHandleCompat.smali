.class public final Lcom/xiaomi/compat/common/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserOwner()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/compat/common/UserHandleCompat;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static myUserId()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

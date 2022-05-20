.class public final Lcom/xiaomi/compat/miui/DisplayFeatureManagerCompat;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setScreenEffect(II)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

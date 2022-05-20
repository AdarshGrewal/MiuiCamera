.class public final Lcom/android/camera/external/perfspy/PerfspySettings$1;
.super Landroid/database/ContentObserver;
.source "PerfspySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/external/perfspy/PerfspySettings;->listenSettingDataChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/external/perfspy/PerfspySettings;->access$000()V

    return-void
.end method

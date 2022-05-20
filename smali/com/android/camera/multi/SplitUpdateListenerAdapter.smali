.class public Lcom/android/camera/multi/SplitUpdateListenerAdapter;
.super Ljava/lang/Object;
.source "SplitUpdateListenerAdapter.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "SplitTest:"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "FAILED"

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "INSTALLED"

    .line 4
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "INSTALLING"

    .line 5
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "DOWNLOADED"

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "DOWNLOADING"

    .line 7
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Lcom/android/camera/multi/SplitUpdateListenerAdapter;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method

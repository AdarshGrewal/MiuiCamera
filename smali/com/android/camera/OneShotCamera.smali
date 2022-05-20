.class public Lcom/android/camera/OneShotCamera;
.super Lcom/android/camera/Camera;
.source "OneShotCamera.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/OneShotCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/Camera;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/OneShotCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/Camera;->onStop()V

    return-void
.end method

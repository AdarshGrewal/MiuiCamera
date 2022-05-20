.class public Lcom/android/camera/module/shottype/DefaultShotTypeHandler;
.super Lcom/android/camera/module/shottype/ShotTypeHandler;
.source "DefaultShotTypeHandler.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/shottype/ShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    return-void
.end method


# virtual methods
.method public couldProcess()Z
    .locals 2

    const-string v0, "ShotTypeHandler"

    const-string v1, "default shot type could handle"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public process()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/shottype/DefaultShotTypeHandler;->process()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

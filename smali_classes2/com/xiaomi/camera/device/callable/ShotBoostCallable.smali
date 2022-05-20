.class public Lcom/xiaomi/camera/device/callable/ShotBoostCallable;
.super Lcom/xiaomi/camera/device/callable/CameraCallable;
.source "ShotBoostCallable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotBoost"


# instance fields
.field public mParam:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/camera/device/callable/CameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V

    .line 2
    iput-boolean p2, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mSuccess:Z

    .line 3
    iput-object p3, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mParam:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/camera/device/callable/CallableReturn;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ShotBoost"

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mParam:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    const-string v0, "ShotBoost"

    const-string v1, "shotboost enable UI"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mParam:Ljava/util/function/Consumer;

    iget-boolean v1, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.class public Lcom/android/camera/module/video/SlowMotionModule$1;
.super Ljava/lang/Object;
.source "SlowMotionModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video/SlowMotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/SlowMotionModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/SlowMotionModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/SlowMotionModule$1;->this$0:Lcom/android/camera/module/video/SlowMotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const v2, 0x7f120416

    const-string v3, "960fps_desc"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public getObserver()I
    .locals 1

    const/16 v0, 0xa1

    return v0
.end method

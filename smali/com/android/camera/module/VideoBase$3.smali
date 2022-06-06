.class public Lcom/android/camera/module/VideoBase$3;
.super Ljava/lang/Object;
.source "VideoBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoBase$3;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase$3;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/Camera;->restoreWindowBrightness()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$3;->this$0:Lcom/android/camera/module/VideoBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/module/VideoBase;->mSavePowerMode:Z

    :cond_1
    return-void
.end method

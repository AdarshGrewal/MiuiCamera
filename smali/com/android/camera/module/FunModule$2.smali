.class public Lcom/android/camera/module/FunModule$2;
.super Lcom/android/camera/module/interceptor/CaptureInterceptor;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/FunModule;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/CaptureInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public intercept()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;->startShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :cond_0
    return-void
.end method

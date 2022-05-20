.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;
.super Landroid/os/Handler;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0x3b2

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->dismissUltraPixelSelfDisplayTip()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

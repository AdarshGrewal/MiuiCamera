.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field public final synthetic val$isHideThumbnail:Z

.field public final synthetic val$start:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-boolean p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$start:Z

    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$isHideThumbnail:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private isMultiCameraDualVideo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showViewWhenStop()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->isMultiCameraDualVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/action/Pickers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$isHideThumbnail:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$start:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FragmentBottomAction"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$start:Z

    if-eqz v2, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/action/Pickers;

    move-result-object p1

    const/16 v2, 0xc0

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/action/Pickers;

    move-result-object p1

    const/16 v2, 0xc1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 12
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$start:Z

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {p1, v3, v1, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1800(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V

    .line 14
    :cond_7
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$start:Z

    if-eqz p1, :cond_8

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {p1, v2, v1, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V

    .line 16
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa3

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz p1, :cond_a

    .line 17
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$start:Z

    if-eqz v1, :cond_9

    .line 18
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->disableDrag()V

    goto :goto_3

    .line 19
    :cond_9
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->switchMoreMode(Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->val$start:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;->showViewWhenStop()V

    :cond_0
    return-void
.end method

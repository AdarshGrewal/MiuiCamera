.class public Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOrientationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTKCAMERAXM"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v1, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$602(Lcom/android/camera/Camera;Z)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$300(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOrientationChanged: first orientation is arrived... , orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v3, v3, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v3, v2, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    if-eq v0, v3, :cond_3

    .line 9
    iput v0, v2, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    .line 10
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v2, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    iget v3, v0, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 12
    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v3, v2, Lcom/android/camera/ActivityBase;->mOrientation:I

    iget v2, v2, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-interface {v0, v3, v2, p1}, Lcom/android/camera/module/common/IAppStateMgr;->onOrientationChanged(III)V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Lcom/android/camera/CommonRotationLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CommonRotationLayout;->isForceFixedGravity()Z

    move-result p1

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Lcom/android/camera/CommonRotationLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 16
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v2, v2, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 17
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/CommonRotationLayout;->provideOrientationChanged(ZII)Z

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Lcom/android/camera/CommonRotationLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CommonRotationLayout;->isForceFixedGravity()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Lcom/android/camera/CommonRotationLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/CommonRotationLayout;->getForceFixedRotation(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/display/Display;->updateOrientation(I)V

    goto :goto_1

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget p1, p1, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-static {p1}, Lcom/android/camera/display/Display;->updateOrientation(I)V

    .line 21
    :goto_1
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Lcom/android/camera/CommonRotationLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CommonRotationLayout;->isForceFixedGravity()Z

    move-result p1

    if-nez p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v1, v0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 23
    invoke-static {v0}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Z

    move-result v0

    .line 24
    invoke-static {}, Lcom/android/camera/display/Display;->getScreenOrientation()I

    move-result v2

    .line 25
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/animation/AnimationComposite;->disposeRotation(IZI)V

    goto :goto_2

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$300(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onOrientationChanged: mBaseFragmentDelegate unable to rotate"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a8

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz p1, :cond_9

    .line 28
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->setOrientation(I)V

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->setDegree(I)V

    return-void
.end method

.class public Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "CameraFocusSplitAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->playSplittingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget p2, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    :goto_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget p2, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->updateValue(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

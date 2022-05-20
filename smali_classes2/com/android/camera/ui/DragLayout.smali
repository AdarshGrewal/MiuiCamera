.class public Lcom/android/camera/ui/DragLayout;
.super Landroid/widget/FrameLayout;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/DragLayout$DragAnimationConfig;,
        Lcom/android/camera/ui/DragLayout$OnDragListener;,
        Lcom/android/camera/ui/DragLayout$Dependency;
    }
.end annotation


# static fields
.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPEND:I = 0x4

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final STATE_SHRINK:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field public static debug:Z

.field public static sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;


# instance fields
.field public mBar:Lcom/android/camera/ui/DragLayoutBar;

.field public mCatchDrag:Z

.field public mChildren:Landroid/widget/FrameLayout;

.field public mContainView:Landroid/widget/FrameLayout;

.field public mCurDirectionIsUp:Z

.field public final mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

.field public mDragInterpolator:Landroid/view/animation/Interpolator;

.field public mDragMode:Z

.field public mOffset:F

.field public mOnDragListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/DragLayout$OnDragListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPromptMode:Z

.field public mScreenOrientation:I

.field public mSkipDragUpDown:Z

.field public mStartDirectionIsUp:Z

.field public mStartX:F

.field public mStartY:F

.field public mState:I

.field public mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/camera/ui/DragLayout;->debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/DragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/DragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    .line 6
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    .line 8
    iput p2, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    .line 9
    iput p2, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    .line 11
    sget-object p2, Lcom/android/camera/ui/DragLayout;->sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    if-nez p2, :cond_0

    .line 12
    new-instance p2, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    invoke-direct {p2, p1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/android/camera/ui/DragLayout;->sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    .line 13
    :cond_0
    new-instance p1, Lcom/android/camera/ui/DragLayout$Dependency;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/ui/DragLayout$Dependency;-><init>(Lcom/android/camera/ui/DragLayout;Lcom/android/camera/ui/DragLayout$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    .line 14
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDragInterpolator:Landroid/view/animation/Interpolator;

    .line 15
    new-instance p1, Lcom/android/camera/ui/DragLayout$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/DragLayout$1;-><init>(Lcom/android/camera/ui/DragLayout;)V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout;->mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    return-void
.end method

.method private LogD(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private LogV(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/ui/DragLayout;->debug:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/DragLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/DragLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/DragLayout;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/DragLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/ui/DragLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayout$Dependency;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/DragLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/DragLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/DragLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/DragLayout;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayoutBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    return-object p0
.end method

.method private ensureView()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->updateDragBar(Z)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    :cond_0
    return-void
.end method

.method public static getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/DragLayout;->sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    return-object v0
.end method

.method private getContainView()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mContainView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0a02ab

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mContainView:Landroid/widget/FrameLayout;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mContainView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private isInvalidMoveEvent(ZLandroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    sub-float/2addr p2, v1

    .line 3
    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    if-eqz p1, :cond_1

    cmpl-float p1, v0, v3

    if-lez p1, :cond_0

    move v2, v4

    :cond_0
    return v2

    :cond_1
    cmpg-float p1, v0, v3

    if-gez p1, :cond_2

    move v2, v4

    :cond_2
    return v2

    :cond_3
    if-eqz p1, :cond_5

    cmpl-float p1, p2, v3

    if-lez p1, :cond_4

    move v2, v4

    :cond_4
    return v2

    :cond_5
    cmpg-float p1, p2, v3

    if-gez p1, :cond_6

    move v2, v4

    :cond_6
    return v2

    :cond_7
    if-eqz p1, :cond_9

    cmpg-float p1, p2, v3

    if-gez p1, :cond_8

    move v2, v4

    :cond_8
    return v2

    :cond_9
    cmpl-float p1, p2, v3

    if-lez p1, :cond_a

    move v2, v4

    :cond_a
    return v2
.end method

.method private isLeftLandscape()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPortrait()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRightLandscape()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onDrag(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDrag skip ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget p1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const-string/jumbo p1, "onDrag fail in prompt mode."

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/DragLayout;->promptShrink(Z)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->promptExpand()Z

    :goto_0
    return v3

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v2, :cond_c

    if-ne v0, v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-ne v0, v3, :cond_b

    .line 8
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/DragLayout;->isInvalidMoveEvent(ZLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    sub-float/2addr p1, v1

    .line 11
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v0, p1

    .line 12
    :goto_1
    iget p1, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_a

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 14
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 15
    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 16
    iget-object v1, p0, Lcom/android/camera/ui/DragLayout;->mDragInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->isLeftLandscape()Z

    move-result v1

    if-eqz v1, :cond_6

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    :goto_2
    neg-float p1, p1

    goto :goto_3

    :cond_6
    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    goto :goto_2

    .line 18
    :cond_7
    :goto_3
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_9

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    move v4, v3

    .line 19
    :cond_8
    iput-boolean v4, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    .line 20
    :cond_9
    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    float-to-int p1, p1

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragProgress(IZ)V

    :cond_a
    return v3

    :cond_b
    return v4

    .line 22
    :cond_c
    :goto_4
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v0, v2, :cond_d

    move v4, v3

    :cond_d
    iput-boolean v4, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    .line 23
    iput-boolean v4, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragStart(Z)V

    .line 25
    invoke-direct {p0, v3}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 26
    iput v5, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    return v3
.end method

.method private setState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v0, p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    :cond_0
    return-void
.end method

.method private shrink(ZLjava/lang/Runnable;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "shrink fail, state error. now state :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result p1

    new-instance v0, Lcom/android/camera/ui/DragLayout$2;

    iget-object v1, p0, Lcom/android/camera/ui/DragLayout;->mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/camera/ui/DragLayout$2;-><init>(Lcom/android/camera/ui/DragLayout;Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    invoke-static {p2, p1, p2, v0}, Lcom/android/camera/animation/FolmeUtils;->popup(FFFLcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eqz p1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragStart(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {p1, v1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragProgress(IZ)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragDone(Z)V

    .line 8
    invoke-direct {p0, p2}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private updateDragBar(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only set one mode enable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-nez v0, :cond_2

    const v0, 0x7f0a012a

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DragLayoutBar;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDragEnable mDragMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPromptMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",withAnim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-eqz v0, :cond_5

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-nez v1, :cond_3

    const/16 p1, 0x8

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaToOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    const/4 v1, 0x0

    iget v2, v0, Lcom/android/camera/ui/DragLayoutBar;->mAlpha:F

    invoke-direct {p1, v0, v1, v2}, Lcom/android/camera/animation/folme/FolmeAlphaToOnSubscribe;-><init>(Landroid/view/View;FF)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    return p1
.end method

.method public synthetic OooO0O0()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    return-void
.end method

.method public addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnDragListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public disableAllMode()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    const-string v1, "disableAllMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/DragLayout;->setPromptMode(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/DragLayout;->setDragMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDragMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPromptMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-nez v0, :cond_2

    const v0, 0x7f0a012a

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DragLayoutBar;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v0, :cond_28

    const/4 v7, 0x0

    if-eq v0, v6, :cond_20

    if-eq v0, v1, :cond_3

    goto/16 :goto_9

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    if-eqz v0, :cond_5

    .line 11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 12
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout$Dependency;->onInterceptDrag()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "skip drag caz dependency intercept."

    .line 13
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 14
    iput-boolean v6, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 15
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 16
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    sub-float/2addr v0, v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v8, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    sub-float/2addr v1, v8

    .line 18
    iget v8, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v8, v4, :cond_7

    if-ne v8, v5, :cond_9

    .line 19
    :cond_7
    iget-boolean v8, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-eqz v8, :cond_8

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    .line 21
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    return v6

    .line 22
    :cond_8
    iget-boolean v8, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eqz v8, :cond_1f

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    return v6

    .line 25
    :cond_9
    iget v8, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v8, v4, :cond_11

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    move v8, v6

    goto :goto_0

    :cond_a
    move v8, v2

    .line 27
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->isLeftLandscape()Z

    move-result v9

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    cmpg-float v8, v0, v7

    if-gez v8, :cond_f

    :cond_b
    :goto_1
    move v8, v6

    goto :goto_2

    .line 28
    :cond_c
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->isRightLandscape()Z

    move-result v9

    if-eqz v9, :cond_d

    if-nez v8, :cond_b

    cmpl-float v8, v0, v7

    if-lez v8, :cond_f

    goto :goto_1

    .line 29
    :cond_d
    iget v9, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    if-nez v9, :cond_e

    if-eqz v8, :cond_b

    cmpl-float v8, v1, v7

    if-lez v8, :cond_f

    goto :goto_1

    :cond_e
    if-ne v9, v5, :cond_f

    if-eqz v8, :cond_b

    cmpg-float v8, v1, v7

    if-gez v8, :cond_f

    goto :goto_1

    :cond_f
    move v8, v2

    :goto_2
    if-eqz v8, :cond_12

    .line 30
    iput-boolean v6, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    const-string/jumbo v0, "skip drag up."

    .line 31
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-eqz v0, :cond_10

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/DragLayoutBar;->start(I)Z

    .line 34
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_11
    move v8, v2

    .line 35
    :cond_12
    iget v9, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v9, v5, :cond_19

    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->isPortrait()Z

    move-result v9

    const-string/jumbo v10, "skip drag down."

    if-eqz v9, :cond_15

    cmpl-float v0, v1, v7

    if-nez v0, :cond_13

    .line 37
    invoke-direct {p0, v10}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_13
    cmpg-float v0, v1, v7

    if-gez v0, :cond_18

    :cond_14
    :goto_3
    move v8, v6

    goto :goto_4

    :cond_15
    cmpl-float v1, v0, v7

    if-nez v1, :cond_16

    .line 39
    invoke-direct {p0, v10}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 41
    :cond_16
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->isLeftLandscape()Z

    move-result v9

    if-eqz v9, :cond_17

    if-gtz v1, :cond_14

    .line 42
    :cond_17
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->isRightLandscape()Z

    move-result v1

    if-eqz v1, :cond_18

    cmpg-float v0, v0, v7

    if-gez v0, :cond_18

    goto :goto_3

    :cond_18
    :goto_4
    if-eqz v8, :cond_19

    .line 43
    iput-boolean v6, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 44
    invoke-direct {p0, v10}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 46
    :cond_19
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-eqz v0, :cond_1c

    .line 47
    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v1, v4, :cond_1b

    if-eq v1, v5, :cond_1a

    goto :goto_5

    .line 48
    :cond_1a
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/DragLayoutBar;->start(I)Z

    goto :goto_5

    .line 49
    :cond_1b
    invoke-virtual {v0, v6}, Lcom/android/camera/ui/DragLayoutBar;->start(I)Z

    .line 50
    :cond_1c
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->onDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1e

    :cond_1d
    move v2, v6

    :cond_1e
    return v2

    :cond_1f
    return v6

    .line 51
    :cond_20
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_21

    .line 52
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 53
    :cond_21
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-eqz v0, :cond_22

    .line 54
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/DragLayoutBar;->start(I)Z

    .line 55
    :cond_22
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v0, v6, :cond_2d

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUp "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOffset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_26

    .line 58
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    iget-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    if-ne v0, v2, :cond_24

    .line 59
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    if-eqz v2, :cond_23

    .line 60
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v2

    neg-float v2, v2

    goto :goto_6

    .line 61
    :cond_23
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v2

    goto :goto_6

    .line 62
    :cond_24
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    move v2, v7

    .line 63
    :goto_6
    iget-object v3, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_25

    const/16 v4, 0x3e8

    .line 64
    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 65
    iget-object v3, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 66
    :cond_25
    iget-object v3, p0, Lcom/android/camera/ui/DragLayout;->mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    invoke-static {v0, v2, v7, v3}, Lcom/android/camera/animation/FolmeUtils;->popup(FFFLcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)Lmiuix/animation/IStateStyle;

    .line 67
    invoke-direct {p0, v1}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    goto :goto_7

    .line 68
    :cond_26
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragDone(Z)V

    .line 69
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    if-eqz v0, :cond_27

    move v4, v5

    :cond_27
    invoke-direct {p0, v4}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 70
    :goto_7
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    if-nez v0, :cond_2d

    return v6

    .line 71
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_29

    .line 73
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_8

    .line 74
    :cond_29
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 75
    :goto_8
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 76
    iput-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/DragLayout$Dependency;->catchDrag(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    if-eqz v0, :cond_2a

    const-string v0, "dependency wanna catch drag event."

    .line 80
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 81
    :cond_2a
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    float-to-int v2, v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DragLayout$Dependency;->showPress(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-eqz v0, :cond_2d

    .line 84
    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v1, v4, :cond_2c

    if-eq v1, v5, :cond_2b

    goto :goto_9

    .line 85
    :cond_2b
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/DragLayoutBar;->start(I)Z

    goto :goto_9

    .line 86
    :cond_2c
    invoke-virtual {v0, v6}, Lcom/android/camera/ui/DragLayoutBar;->start(I)Z

    .line 87
    :cond_2d
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDragChildren()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mChildren:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a012c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mChildren:Landroid/widget/FrameLayout;

    .line 3
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooooO/OooO0oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooO0oo;-><init>(Lcom/android/camera/ui/DragLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mChildren:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShrink()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->ensureView()V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->getContainView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public promptExpand()Z
    .locals 2

    const-string/jumbo v0, "promptExpand"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expand fail, state error. now state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooooO/OooO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooO;-><init>(Lcom/android/camera/ui/DragLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->promptExpand(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public promptShrink(Z)Z
    .locals 2

    const-string/jumbo v0, "promptShrink"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shrink fail, state error. now state :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOO0;-><init>(Lcom/android/camera/ui/DragLayout;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->promptShrink(ZLjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeOnDragListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragStart(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragProgress(IZ)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragDone(Z)V

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    :cond_0
    return-void
.end method

.method public setDragMode(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDragEnable mDragMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", force : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-eq p1, v1, :cond_3

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->updateDragBar(Z)V

    :cond_3
    return-void
.end method

.method public setPromptMode(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->updateDragBar(Z)V

    :cond_0
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mScreenOrientation:I

    .line 3
    iget p1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public shrink(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/DragLayout;->shrink(ZLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

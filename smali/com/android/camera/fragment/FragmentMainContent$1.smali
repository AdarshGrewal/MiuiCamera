.class public Lcom/android/camera/fragment/FragmentMainContent$1;
.super Ljava/lang/Object;
.source "FragmentMainContent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentMainContent;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mPressDownTime:J

.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->mPressDownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xab

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-interface {p1, v0, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentMainContent;->access$000(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_5

    return v1

    .line 7
    :cond_5
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    sub-int/2addr v3, v2

    if-le p2, v3, :cond_6

    return v1

    .line 10
    :cond_6
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v2, p1

    if-ge p2, v2, :cond_7

    return v1

    .line 11
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->mPressDownTime:J

    return v0
.end method

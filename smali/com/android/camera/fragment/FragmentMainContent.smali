.class public Lcom/android/camera/fragment/FragmentMainContent;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMainContent.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf3

.field public static final TAG:Ljava/lang/String; = "FragmentMainContent"


# instance fields
.field public mActiveIndicator:I

.field public mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

.field public mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

.field public mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mDisplayRectLeftMargin:I

.field public mDisplayRectTopMargin:I

.field public mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field public mHandler:Landroid/os/Handler;

.field public mIsIntentAction:Z

.field public mIsRecording:Z

.field public mIvIdPhotoBox:Landroid/widget/ImageView;

.field public mLastCameraId:I

.field public mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mListener:Lcom/android/camera/aiwatermark/DragListener;

.field public mLocationDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mMoreModeMaskView:Landroid/view/View;

.field public mObjectView:Lcom/android/camera/ui/ObjectView;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field public mPreviewPage:Landroid/view/ViewGroup;

.field public mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field public mRealDegree:I

.field public mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mShineHalo:Lcom/android/camera/ui/FlashHaloView;

.field public mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

.field public mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

.field public mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

.field public mWatermarkDegree:I

.field public mWatermarkExtendLayout:Landroid/widget/FrameLayout;

.field public mWatermarkExtendViewStub:Landroid/view/ViewStub;

.field public mWatermarkLayout:Landroid/widget/FrameLayout;

.field public mWatermarkScaleSize:F

.field public mWatermarkViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    .line 6
    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRealDegree:I

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLocationDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent$2;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/widget/TextView;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 16
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V
    .locals 1

    const v0, 0x7f120138

    .line 19
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/ShapeBackGroundView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/FragmentMainContent;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLocationDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->findTextView(Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/FragmentMainContent;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/FragmentMainContent;ILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    return-void
.end method

.method private adjustViewHeight()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 7
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectLeftMargin:I

    if-eq v4, v5, :cond_2

    .line 8
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    .line 9
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectLeftMargin:I

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setDisplaySize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private autoRelayoutUI(Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/graphics/Rect;Z)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "longitude_latitude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "location_time_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "location_time_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eq p1, v4, :cond_9

    const v0, 0x7f070094

    const v5, 0x7f070093

    if-eq p1, v3, :cond_6

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p4, 0x7f0a023a

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p4

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 7
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v6, 0x7f0a0239

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    cmpg-float v7, p4, v2

    if-gtz v7, :cond_1

    float-to-double v7, p4

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int p4, v7

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f07007c

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f070076

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_1
    float-to-int p4, v2

    .line 12
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f07007d

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f070077

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 16
    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07008a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 20
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 21
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 22
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr v0, v4

    add-int/2addr v6, v0

    .line 23
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    .line 24
    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 25
    iput v6, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 28
    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 29
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v2, v1, :cond_2

    .line 30
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v1

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 31
    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, v2

    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 33
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 34
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget p3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p3

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v0

    invoke-virtual {p2, p3, v0, v1, p4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 36
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_7

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f07071c

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 40
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070724

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 41
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 42
    iget p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 43
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p4, v3, v3, v0, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 46
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v3, p1, p3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 48
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_4

    .line 49
    :cond_4
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const p3, 0x7f0a0058

    .line 50
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasAltitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentMainContent"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_5

    .line 52
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700af

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_5
    const/16 p4, 0x8

    .line 55
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 57
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700b1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 58
    :goto_3
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 59
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700a9

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 60
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 62
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 63
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p4, v3, v3, v0, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 65
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 66
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v3, p3, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 68
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    :goto_4
    const/4 p1, 0x0

    goto/16 :goto_7

    .line 69
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p4, 0x7f0a0241

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v3, v2

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_7

    float-to-double v1, v1

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 75
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5

    .line 76
    :cond_7
    iput v2, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 77
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 78
    :goto_5
    iget v1, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 79
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0242

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 81
    iget v2, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 82
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070080

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 84
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v1

    .line 85
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 86
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070083

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070086

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 89
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070088

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 90
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v0, v4

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 91
    iget p4, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v0, p4

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 92
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 94
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 95
    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v1, v0, :cond_8

    .line 96
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v0

    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 97
    :cond_8
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v0

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v1

    invoke-virtual {p3, v0, v1, v3, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 99
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 100
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget p3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v0, p3

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, p4

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 102
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_7

    .line 103
    :cond_9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p4, 0x7f0a023d

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 104
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0115

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 105
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 108
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 109
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, v2

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_a

    float-to-double v1, v1

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 112
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_6

    .line 113
    :cond_a
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 114
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f07006d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 115
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    :goto_6
    invoke-virtual {p4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v5, v1

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v3, v2

    invoke-virtual {p4, v1, v2, v5, v3}, Landroid/view/View;->layout(IIII)V

    .line 118
    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    .line 119
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a023e

    invoke-virtual {p4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 120
    invoke-virtual {p4}, Landroid/widget/TextView;->getWidth()I

    move-result p4

    .line 121
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 122
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a023f

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    iput p4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 126
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v6, v3

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 129
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 130
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 131
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 133
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 135
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 137
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070071

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 138
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 139
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 140
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v1, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    add-int/2addr v1, p4

    add-int/2addr v1, v6

    .line 141
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 142
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 143
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f070075

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 144
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 146
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v2, v1, :cond_b

    .line 148
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v1

    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 149
    :cond_b
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v1

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v2

    invoke-virtual {p3, v1, v2, v3, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 151
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 152
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, p4, v1, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 154
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    :goto_7
    if-eqz p1, :cond_c

    .line 155
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->reSizeTextView(Landroid/widget/TextView;)V

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_4
        0x2411709 -> :sswitch_3
        0x241170a -> :sswitch_2
        0x708f48fc -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private calculateLP(Lcom/android/camera/aiwatermark/data/WatermarkItem;ILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 16

    move/from16 v0, p2

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p2}, Lcom/android/camera/fragment/FragmentMainContent;->needMoveUpWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z

    move-result v2

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz v2, :cond_11

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v6, 0xfd

    invoke-virtual {v2, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070836

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07012c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    :cond_0
    move v7, v6

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v9, 0xc2

    invoke-virtual {v8, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v8, :cond_7

    .line 7
    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    .line 9
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x31

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v11, v12, :cond_4

    const/16 v12, 0x32

    if-eq v11, v12, :cond_3

    const/16 v12, 0x37

    if-eq v11, v12, :cond_2

    const/16 v6, 0x61f

    if-eq v11, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "10"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v13

    goto :goto_2

    :cond_2
    const-string v11, "7"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_3
    const-string v6, "2"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v14

    goto :goto_2

    :cond_4
    const-string v6, "1"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v15

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v10

    :goto_2
    const v9, 0x7f070103

    if-eqz v6, :cond_6

    if-eq v6, v15, :cond_6

    if-eq v6, v14, :cond_6

    if-eq v6, v13, :cond_6

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070132

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 13
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v2, :cond_8

    .line 14
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v7

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_8
    if-eqz v8, :cond_15

    .line 16
    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 17
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_9
    if-eq v0, v5, :cond_10

    if-eq v0, v4, :cond_d

    if-eq v0, v3, :cond_c

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v2, :cond_a

    .line 19
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v7

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_a
    if-eqz v8, :cond_15

    .line 21
    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 22
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    .line 23
    :cond_b
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    .line 24
    :cond_c
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v0, v2

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x14

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    .line 25
    :cond_d
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v2, :cond_e

    .line 26
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 27
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v7

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_e
    if-eqz v8, :cond_15

    .line 28
    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 29
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    .line 30
    :cond_f
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 31
    :cond_10
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x14

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 32
    :cond_11
    invoke-direct/range {p0 .. p2}, Lcom/android/camera/fragment/FragmentMainContent;->needMoveDownWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f0700bd

    if-eq v0, v5, :cond_14

    if-eq v0, v4, :cond_13

    if-eq v0, v3, :cond_12

    .line 33
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 34
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 35
    :cond_13
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 36
    :cond_14
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_15
    :goto_4
    return-object v1
.end method

.method private doAccessible(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo00O;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo00O;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private findTextView(Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "location_time_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "location_time_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const p2, 0x7f0a0241

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    const p2, 0x7f0a023d

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    const p2, 0x7f0a023a

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_2
        0x241170a -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private getAIWatermarkScaleSize()F
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x4

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAIWatermarkScaleSize previewWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentMainContent"

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v1, 0x40311173

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getPixelDensity()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getBaseModule()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutByKey(Landroid/widget/FrameLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "super_moon_text_6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "super_moon_text_4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "super_moon_text_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "longitude_latitude"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "location_time_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "location_time_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const p2, 0x7f0a03e6

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_0
    const p2, 0x7f0a0245

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_1
    const p2, 0x7f0a0240

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_2
    const p2, 0x7f0a023b

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_3
    const p2, 0x7f0a0238

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_4
    const p2, 0x7f0a0158

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_5
    const p2, 0x7f0a0157

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_6
    const p2, 0x7f0a0156

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_7
        0x2411709 -> :sswitch_6
        0x241170a -> :sswitch_5
        0x708f48fc -> :sswitch_4
        0x714f9fb5 -> :sswitch_3
        0x7c8cb5d9 -> :sswitch_2
        0x7c8cb5dc -> :sswitch_1
        0x7c8cb5de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLayoutParams(Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/Rect;Landroid/util/Size;I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    if-gez p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutParamsForExtent(Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;Landroid/util/Size;II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-eq p5, v0, :cond_16

    if-eqz p5, :cond_16

    const/16 v0, 0x5a

    if-eq p5, v0, :cond_f

    const/16 v0, 0xb4

    if-eq p5, v0, :cond_8

    const/16 v0, 0x10e

    if-eq p5, v0, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 3
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 4
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    .line 5
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 6
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    .line 8
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 9
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_3
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4

    .line 10
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 11
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_4
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_5

    .line 12
    iget p5, p3, Landroid/graphics/Rect;->right:I

    .line 13
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    :cond_5
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_6

    .line 14
    iget p5, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p5

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    .line 15
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_6
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_7

    .line 16
    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int v0, p2, p3

    .line 17
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 18
    :cond_7
    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 19
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 20
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 21
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 22
    :cond_8
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 23
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 24
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 25
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_9

    .line 26
    iget p5, p3, Landroid/graphics/Rect;->right:I

    .line 27
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr p5, v1

    :cond_9
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_a

    .line 28
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 29
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_a
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_b

    .line 30
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 31
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_b
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_c

    .line 32
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 33
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_c
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_d

    .line 34
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 35
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_d
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_e

    .line 36
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p5

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int p5, p2, p3

    .line 37
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 38
    :cond_e
    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 39
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 40
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 41
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 42
    :cond_f
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 43
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 44
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    .line 45
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_10

    .line 46
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_10
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_11

    .line 48
    iget p5, p3, Landroid/graphics/Rect;->right:I

    .line 49
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    :cond_11
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    .line 50
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 51
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_12
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_13

    .line 52
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 53
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_13
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_14

    .line 54
    iget p5, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p5

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    .line 55
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_14
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_15

    .line 56
    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int v0, p2, p3

    .line 57
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 58
    :cond_15
    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 59
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 60
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 61
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 62
    :cond_16
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 63
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 64
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 65
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_17

    .line 66
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 67
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_17
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_18

    .line 68
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 69
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_18
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_19

    .line 70
    iget p5, p3, Landroid/graphics/Rect;->right:I

    .line 71
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr p5, v1

    :cond_19
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_1a

    .line 72
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 73
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1a
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1b

    .line 74
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 75
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_1b
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_1c

    .line 76
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p5

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int p5, p2, p3

    .line 77
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 78
    :cond_1c
    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 79
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 80
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 81
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    return-object p1
.end method

.method private getLayoutParamsForExtent(Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;Landroid/util/Size;II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq p5, v3, :cond_0

    if-eqz p5, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLayoutParamsForExtent failed, unsupported degree:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FragmentMainContent"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-ne p4, v3, :cond_1

    .line 5
    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    goto :goto_0

    .line 6
    :cond_1
    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p5

    add-int/2addr v2, p5

    sub-int/2addr p4, v2

    :goto_0
    move v1, p4

    .line 7
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p5

    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    add-int v0, p4, p2

    .line 8
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 9
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 11
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 12
    :cond_2
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 13
    :goto_2
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object p1
.end method

.method private getLocationText(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "location_time_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "location_time_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const p1, 0x7f0a0241

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    const p1, 0x7f0a023d

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    const p1, 0x7f0a023a

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :goto_2
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_2
        0x241170a -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private initAIWatermarkLayout()V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070724

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentMainContent;->initAIWatermarkViews(ZZF)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 9
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private initAIWatermarkViews(ZZF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isFat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isThin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentMainContent"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x442f0000    # 700.0f

    if-eqz p1, :cond_0

    cmpl-float p1, p3, v0

    if-gtz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_5

    cmpg-float p1, p3, v0

    if-gez p1, :cond_5

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x4

    .line 4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkVisible(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 7
    :cond_4
    new-instance p1, Lcom/android/camera/aiwatermark/DragListener;

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p1, p2, p3}, Lcom/android/camera/aiwatermark/DragListener;-><init>(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;)V

    :goto_2
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    return-void
.end method

.method private initSuperMoonWatermarkLayout()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    :cond_2
    return-void
.end method

.method private initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;
    .locals 2

    const-string v0, "FragmentMainContent"

    const-string v1, "initWatermarkLayout"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initWatermarkLocation(Landroid/widget/FrameLayout$LayoutParams;Landroid/util/Size;Landroid/graphics/Rect;I)[I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p4, v1, :cond_1

    if-eqz p4, :cond_1

    const/16 v1, 0x5a

    if-eq p4, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p4, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p4, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    aput p4, v0, v3

    .line 4
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    aput p1, v0, v2

    goto :goto_0

    .line 5
    :cond_1
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    aput p4, v0, v3

    .line 6
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    aput p1, v0, v2

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1, p3, v0}, Lcom/android/camera/aiwatermark/DragListener;->reInit(Landroid/graphics/Rect;[I)V

    :cond_2
    return-object v0
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private needMoveDownWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasMove()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 p1, 0xb4

    if-eq p2, p1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private needMoveUpWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasMove()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p2

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasMove()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    return v0
.end method

.method private needReferenceLineMode()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb6

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xcc

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private reSizeTextView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo00o;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo00o;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "FragmentMainContent"

    const-string/jumbo p2, "warning text is null please check"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setWatermarkText(Landroid/view/ViewGroup;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_5

    .line 1
    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "super_moon_text_6"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "super_moon_text_4"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "super_moon_text_1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "location"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "longitude_latitude"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const-string v1, "location_time_2"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "location_time_1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "time"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v0, v4

    :cond_1
    :goto_0
    const/4 p3, 0x0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0a02b1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00fd

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a01be

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    aget-object p3, p2, p3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    aget-object p3, p2, v4

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_0
    const v0, 0x7f0a0243

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01f2

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0a0057

    .line 11
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 12
    aget-object p3, p2, p3

    invoke-direct {p0, v0, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 13
    aget-object p3, p2, v4

    invoke-direct {p0, v1, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 14
    array-length p3, p2

    if-lt p3, v2, :cond_4

    .line 15
    aget-object p2, p2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const v0, 0x7f0a0241

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0242

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 18
    aget-object p3, p2, p3

    invoke-direct {p0, v0, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 19
    aget-object p2, p2, v4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    const v0, 0x7f0a023c

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a023e

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a023d

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 23
    aget-object p3, p2, p3

    invoke-direct {p0, v0, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 24
    aget-object p3, p2, v4

    invoke-direct {p0, v1, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 25
    aget-object p2, p2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    const v0, 0x7f0a023a

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 27
    aget-object p2, p2, p3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_1

    :pswitch_4
    const v0, 0x7f0a015b

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 30
    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_5
    const v0, 0x7f0a0153

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a015a

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 33
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "sans-serif-light"

    .line 34
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070278

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    .line 36
    invoke-virtual {v0, p3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    :cond_2
    aget-object p3, p2, p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    aget-object p2, p2, v4

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_6
    const v0, 0x7f0a0154

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0155

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 42
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x3f75c28f    # 0.96f

    mul-float/2addr v1, v2

    .line 44
    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    :cond_3
    aget-object p3, p2, p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    aget-object p2, p2, v4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p1, "FragmentMainContent"

    const-string p2, "There is no data to display"

    .line 47
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_7
        0x2411709 -> :sswitch_6
        0x241170a -> :sswitch_5
        0x708f48fc -> :sswitch_4
        0x714f9fb5 -> :sswitch_3
        0x7c8cb5d9 -> :sswitch_2
        0x7c8cb5dc -> :sswitch_1
        0x7c8cb5de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    :goto_0
    return-void
.end method

.method private showWatermarkItem(Landroid/widget/FrameLayout;Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showWatermarkItem visible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isDual:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " visibility:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentMainContent"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const v4, 0x7f0a04e0

    .line 3
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p2, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0156

    .line 4
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0157

    .line 5
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0158

    .line 6
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a03e6

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0238

    .line 8
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a023b

    .line 9
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0240

    .line 10
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0245

    .line 11
    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/view/View;

    aput-object v2, v6, v1

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    const/4 v1, 0x4

    aput-object p1, v6, v1

    .line 12
    invoke-direct {p0, v0, p2, v6}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(ZZ[Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private varargs showWatermarkItem(ZZ[Landroid/view/View;)V
    .locals 6

    .line 13
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    const/16 v4, 0x8

    if-eqz p2, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    .line 14
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showWatermarkTipsIfNeeded(Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "super_moon_reset"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const v0, 0x7f120928

    const-wide/16 v1, 0xbb8

    .line 5
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_1
    return-void
.end method

.method private updateCoverTheme(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/android/camera/Util;->setBrightnessRampRate(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2010

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/FlashHaloView;->updateThemeStyle(II)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    return-void
.end method

.method private updateHaloCover()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {v2, v1, v1}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    const/4 v2, -0x1

    .line 4
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->updateCoverTheme(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateSystemUIVisibility()V

    :goto_0
    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    if-nez v0, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const-string v2, "halo"

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    :cond_2
    return-void
.end method

.method private updateHaloViewSize()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentHeight()I

    move-result v0

    :goto_0
    move v3, v0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentHeight()I

    move-result v0

    :goto_1
    move v5, v0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, v3

    move v3, v0

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/ui/FlashHaloView;->setMaskMargins(IIIILjava/util/List;Z)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, v3

    move v4, v5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/ui/FlashHaloView;->setMaskMargins(IIIILjava/util/List;Z)V

    :goto_2
    return-void
.end method

.method private updateImageWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 8

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateWatermarkItemRotation E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p6, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p6, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasMove(Z)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWatermarkItemRotation item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v4

    .line 5
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getBitmapSize(Landroid/content/Context;I)Landroid/util/Size;

    move-result-object v1

    .line 7
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_1

    .line 8
    new-instance v1, Landroid/util/Size;

    iget v2, p4, Landroid/graphics/Rect;->right:I

    iget v5, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    iget v6, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-direct {v2, v5, v1}, Landroid/util/Size;-><init>(II)V

    move-object v1, v2

    .line 10
    :goto_0
    iget v7, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v2, p0

    move-object v5, p4

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutParams(Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/Rect;Landroid/util/Size;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 11
    invoke-direct {p0, v2, v1, p4, p3}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLocation(Landroid/widget/FrameLayout$LayoutParams;Landroid/util/Size;Landroid/graphics/Rect;I)[I

    move-result-object v1

    .line 12
    invoke-virtual {p5}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v3

    invoke-virtual {p5, v1, p4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateLocation([ILandroid/graphics/Rect;I)V

    .line 14
    invoke-virtual {p6, v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setCaptureCoordinate([I)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-direct {p0, p6, p3, v2}, Lcom/android/camera/fragment/FragmentMainContent;->calculateLP(Lcom/android/camera/aiwatermark/data/WatermarkItem;ILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 16
    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    const p4, 0x7f0a04e0

    .line 19
    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResId()I

    move-result v1

    invoke-static {p5, v1}, Lcom/android/camera/Util;->convertResToBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 21
    invoke-static {p5, p3}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 22
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    invoke-direct {p0, p6, p2}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextBitmap(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/view/View;)V

    .line 25
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string/jumbo p6, "string"

    invoke-virtual {p1, p3, p6, p5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_2
    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    const p1, 0x7f120465

    .line 27
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->doAccessible(Landroid/view/View;)V

    const-string/jumbo p1, "updateWatermarkItemRotation X"

    .line 30
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    return-void
.end method

.method private updateSystemUIVisibility()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2010

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateTextBitmap(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocationDirectly()Landroid/location/Location;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "super_moon_text_6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "super_moon_text_4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "super_moon_text_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_4
    const-string v2, "longitude_latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "location_time_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "location_time_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_7
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    :goto_2
    move v4, v5

    goto :goto_3

    .line 4
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    goto :goto_3

    :pswitch_1
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    .line 6
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    goto :goto_3

    :pswitch_2
    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    .line 9
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    .line 13
    :goto_3
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOooO;

    invoke-direct {v1, p0, p1, v4, p2}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOooO;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_7
        0x2411709 -> :sswitch_6
        0x241170a -> :sswitch_5
        0x708f48fc -> :sswitch_4
        0x714f9fb5 -> :sswitch_3
        0x7c8cb5d9 -> :sswitch_2
        0x7c8cb5dc -> :sswitch_1
        0x7c8cb5de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateTextWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 9

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateTextWatermarkItemRotation E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p6, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasMove(Z)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTextWatermarkItemRotation item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0, p2, v1}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutByKey(Landroid/widget/FrameLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 6
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->get24HourMode(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p6, v3, v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getWatermarkText(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkText(Landroid/view/ViewGroup;[Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    .line 9
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->isLocationWatermark()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "time"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    :cond_1
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasAltitude()Z

    move-result p1

    invoke-direct {p0, v1, v2, p4, p1}, Lcom/android/camera/fragment/FragmentMainContent;->autoRelayoutUI(Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/graphics/Rect;Z)V

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in layout.getWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "out watermarkLayout.getWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance p1, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-direct {p1, v1, v3}, Landroid/util/Size;-><init>(II)V

    .line 16
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v5

    .line 18
    iget v8, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v3, p0

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutParams(Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/Rect;Landroid/util/Size;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 19
    invoke-direct {p0, v1, p1, p4, p3}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLocation(Landroid/widget/FrameLayout$LayoutParams;Landroid/util/Size;Landroid/graphics/Rect;I)[I

    move-result-object p1

    .line 20
    invoke-virtual {p5}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v3

    invoke-virtual {p5, p1, p4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateLocation([ILandroid/graphics/Rect;I)V

    .line 22
    invoke-virtual {p6, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setCaptureCoordinate([I)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-direct {p0, p6, p3, v1}, Lcom/android/camera/fragment/FragmentMainContent;->calculateLP(Lcom/android/camera/aiwatermark/data/WatermarkItem;ILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 24
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 26
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getTimeWatermarkString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    int-to-float p1, p3

    .line 28
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 29
    invoke-direct {p0, p6, v2}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextBitmap(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/view/View;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->doAccessible(Landroid/view/View;)V

    const-string/jumbo p1, "updateTextWatermarkItemRotation X"

    .line 31
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private updateWatermarkItemBackground(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Landroid/graphics/Rect;)V
    .locals 8

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateWatermarkItemBackground E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v2

    const-string/jumbo v3, "super_moon_reset"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result p1

    const v3, 0x7f0a04de

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWatermarkItemBackground type:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "super_moon_window"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070286

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move v1, v4

    .line 14
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800e0

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getBitmapSize(Landroid/content/Context;I)Landroid/util/Size;

    move-result-object v5

    .line 15
    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v1, v1

    iget v7, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    mul-float/2addr v1, v7

    add-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 16
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    int-to-float v1, v2

    mul-float/2addr v1, v7

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 17
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 18
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWatermarkItemBackground: mWatermarkScaleSize: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string/jumbo p1, "updateWatermarkItemBackground X"

    .line 26
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private updateWatermarkRotation(ILandroid/graphics/Rect;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWatermarkRotation degree = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentMainContent"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4
    invoke-virtual {v6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->isTextWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateImageWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 8
    invoke-virtual {v6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->isTextWatermark()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateImageWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewReferenceLine()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewGradienter()V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewCenterMark()V

    return-void
.end method

.method public synthetic OooO00o(IILandroid/animation/ValueAnimator;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v0

    .line 33
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 34
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    int-to-float v2, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, p3

    add-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentWidth(I)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    if-ne v0, p2, :cond_0

    .line 36
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/customization/FlashHalo;->getHaloVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xfd

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x6

    .line 11
    invoke-interface {p2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    .line 12
    :cond_0
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoO0;

    invoke-direct {p2, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoO0;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    if-eqz p2, :cond_4

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "location_time_2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "location_time_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0a0241

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0a023d

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0a023a

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    :goto_1
    if-eqz p2, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfd

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->startDottedLineAnimation(Landroid/view/View;)V

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_2
        0x241170a -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic OooO00o(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->isTextWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p3, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->updateViewBitmap(Landroid/view/View;I)V

    goto :goto_1

    .line 22
    :cond_1
    iget p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    neg-int p2, p2

    invoke-virtual {p1, p3, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->updateViewBitmap(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIvIdPhotoBox:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 28
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 31
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public animBlackCover()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateHaloViewSize()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 5
    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v5, v1

    int-to-double v7, v4

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v9

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    double-to-int v1, v5

    .line 7
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    new-instance v5, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;

    invoke-direct {v5, p0, v0, v1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;-><init>(Lcom/android/camera/fragment/FragmentMainContent;II)V

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(Ljava/util/List;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public clearFocusView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->clear(I)V

    :cond_0
    return-void
.end method

.method public clearIndicator(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not allowed call in this method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->clear()V

    :goto_0
    return-void
.end method

.method public destroyEffectCropView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onDestroy()V

    return-void
.end method

.method public disableFrontFlashAndHalo(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentRealValue(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "2"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->setFlashMode(ILjava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 13
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera2/autozoom/AutoZoomView;->feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method

.method public getActiveIndicator()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return v0
.end method

.method public getFaceWaterMarkInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFaceWaterMarkInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFaces()[Lcom/android/camera2/CameraHardwareFace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v0

    return-object v0
.end method

.method public getFocusRect(I)Landroid/graphics/RectF;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": unexpected type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentMainContent"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getFocusRectInPreviewFrame()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getFocusX()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->getFocusX()I

    move-result v0

    return v0
.end method

.method public getFocusY()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->getFocusY()I

    move-result v0

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf3

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d008f

    return v0
.end method

.method public getReferenceLine()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getReferenceLine()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public hideFaceAnimator()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x12c

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FaceView;->attemptHideFaceRect(J)V

    :cond_0
    return-void
.end method

.method public hideReferenceGradienter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoO;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public hideReviewViews()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public initEffectCropView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onCreate()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getAIWatermarkScaleSize()F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView mWatermarkScaleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "FragmentMainContent"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a01fa

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a0348

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a0403

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a0095

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a0374

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashHaloView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    const v0, 0x7f0a02b5

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    const v0, 0x7f0a0452

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Landroid/view/ViewGroup;

    const v1, 0x7f0a0453

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a044f

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a044c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a044d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a044e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const v0, 0x7f0a0450

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIvIdPhotoBox:Landroid/widget/ImageView;

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/autozoom/AutoZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a0406

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/trackfocus/TrackFocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AfRegionsView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    const v0, 0x7f0a04e2

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    const v0, 0x7f0a04da

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    const v0, 0x7f0a04d8

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

    .line 23
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 33
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateHaloViewSize()V

    .line 34
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateHaloCover()V

    .line 35
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent$1;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    .line 38
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    :cond_0
    return-void
.end method

.method public initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result p1

    return p1
.end method

.method public initializeObjectView(Landroid/graphics/RectF;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result p1

    return p1
.end method

.method public isAdjustingObjectView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    return v0
.end method

.method public isAutoZoomActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewActive()Z

    move-result v0

    return v0
.end method

.method public isAutoZoomEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutoZoomViewEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    return v0
.end method

.method public isEffectViewMoved()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result v0

    return v0
.end method

.method public isEffectViewVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isEvAdjusted(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result p1

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result p1

    return p1
.end method

.method public isFaceExists(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result p1

    return p1
.end method

.method public isFaceStable(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result p1

    return p1
.end method

.method public isFocusViewMoving()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isFocusViewMoving()Z

    move-result v0

    return v0
.end method

.method public isFocusViewVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isIndicatorVisible(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 2
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public isNeedExposure(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result p1

    return p1
.end method

.method public isObjectTrackFailed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result v0

    return v0
.end method

.method public isShowReviewViews()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitFocusExposureDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isSplitFocusExposureDown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveWatermarkLayout(II)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    .line 5
    iget v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->needMoveUpWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eq p1, v2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    .line 9
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    .line 10
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result p1

    if-nez p1, :cond_b

    .line 12
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 14
    iget p1, v1, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, p2

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 19
    :cond_6
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    .line 20
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result p1

    if-nez p1, :cond_7

    .line 21
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p1

    add-int/2addr p2, p1

    .line 22
    :cond_7
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_b

    .line 23
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    if-gt p1, p2, :cond_b

    .line 24
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 25
    :cond_8
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 26
    iget p1, v1, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, v1

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 27
    :cond_9
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 28
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 29
    :cond_a
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 30
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 31
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 33
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p2, 0xc8

    invoke-virtual {p1, p2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_c
    :goto_1
    return-void
.end method

.method public needViewClear()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xfe

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6PreviewFrame;->updateReferenceLineAccordSquare()V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateReferenceGradienterSwitched()V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateCenterMarkSwitched()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->reInit()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/trackfocus/TrackFocusView;->clear()V

    .line 15
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd5

    if-ne p1, v0, :cond_5

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 18
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->updateFocusMode(Ljava/lang/String;)V

    .line 19
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->animBlackCover()V

    :cond_6
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p2

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    if-eq p2, v0, :cond_0

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->hideReviewViews()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    if-ne p2, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f1200a5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f12006e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f120024

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 17
    :cond_3
    :goto_0
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcc

    const/4 v2, 0x2

    if-ne p2, v0, :cond_4

    .line 18
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    if-eq p1, v2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    goto :goto_2

    .line 21
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    :goto_2
    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/customization/FlashHalo;->getHaloVisible()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p3}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result p3

    if-nez p3, :cond_3

    .line 4
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p3, p2, p1}, Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mShineHalo:Lcom/android/camera/ui/FlashHaloView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/FlashHaloView;->hide(Z)V

    :cond_3
    :goto_1
    const/4 p1, -0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->updateCoverTheme(I)V

    return-void
.end method

.method public onAutoZoomStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onAutoZoomStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onConfigurationChanged mode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentMainContent"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initAIWatermarkLayout()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initSuperMoonWatermarkLayout()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    return-void
.end method

.method public onEffectViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkVisible(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo000;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo000;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public onStopObjectTrack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTrackingStarted(Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;->startTracking(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public onTrackingStopped(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p1, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onViewTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p1, p2}, Lcom/android/camera2/autozoom/AutoZoomView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method public processingFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->processingFinish()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    return-void
.end method

.method public processingStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->processingStart()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/FragmentMainContent;->updateCoverTheme(I)V

    :cond_1
    const/16 p3, 0xfe

    const/4 v1, 0x1

    if-ne p1, p3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setIdPhotoBoxVisible(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result v2

    const/16 v3, 0xa3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    const/16 v3, 0xbc

    if-eq p1, v3, :cond_4

    const/16 v3, 0xcd

    if-eq p1, v3, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initAIWatermarkLayout()V

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initSuperMoonWatermarkLayout()V

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v3

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    :goto_1
    move v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v4

    :goto_3
    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    const/4 v3, 0x4

    .line 12
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkVisible(I)V

    .line 13
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_5

    .line 14
    :cond_8
    new-instance v2, Lcom/android/camera/aiwatermark/DragListener;

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v5}, Lcom/android/camera/aiwatermark/DragListener;-><init>(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;)V

    :goto_5
    iput-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    .line 15
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    :cond_9
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewReferenceLine()V

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewGradienter()V

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewCenterMark()V

    .line 19
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 20
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->clearFaceFlags()V

    .line 21
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 22
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v2}, Lcom/android/camera/ui/AfRegionsView;->clear()V

    .line 23
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-virtual {v2}, Lcom/android/camera/trackfocus/TrackFocusView;->clear()V

    .line 24
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->releaseListener()V

    .line 25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getLeftMaskWidth()I

    move-result v3

    .line 27
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 28
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_e

    .line 29
    :cond_a
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 30
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v5

    if-le v3, v5, :cond_b

    move v5, v1

    goto :goto_6

    :cond_b
    move v5, v4

    :goto_6
    if-nez v5, :cond_c

    if-ne p1, p3, :cond_e

    .line 31
    :cond_c
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_d

    move v6, v1

    goto :goto_7

    :cond_d
    move v6, v4

    :goto_7
    invoke-virtual {v5, v3, p2, v6}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    .line 32
    :cond_e
    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getRightMaskWidth()I

    move-result v3

    .line 33
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_f

    .line 34
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_13

    .line 35
    :cond_f
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v5

    if-le v3, v5, :cond_10

    move v5, v1

    goto :goto_8

    :cond_10
    move v5, v4

    :goto_8
    if-nez v5, :cond_11

    if-ne p1, p3, :cond_13

    .line 37
    :cond_11
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_12

    move v6, v1

    goto :goto_9

    :cond_12
    move v6, v4

    :goto_9
    invoke-virtual {v5, v3, p2, v6}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    .line 38
    :cond_13
    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result v3

    .line 39
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_14

    .line 40
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_18

    .line 41
    :cond_14
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v5

    if-le v3, v5, :cond_15

    move v5, v1

    goto :goto_a

    :cond_15
    move v5, v4

    :goto_a
    if-nez v5, :cond_16

    if-ne p1, p3, :cond_18

    .line 43
    :cond_16
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_17

    move v6, v1

    goto :goto_b

    :cond_17
    move v6, v4

    :goto_b
    invoke-virtual {v5, v3, p2, v6}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    .line 44
    :cond_18
    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getBottomMaskTargetHeight()I

    move-result v2

    .line 45
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_19

    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_1e

    .line 47
    :cond_19
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_1a

    if-ne v0, v3, :cond_1a

    .line 48
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 49
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1, v2, p2, v4}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    return-void

    .line 50
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    if-le v2, v0, :cond_1b

    move v0, v1

    goto :goto_c

    :cond_1b
    move v0, v4

    :goto_c
    if-nez v0, :cond_1c

    if-ne p1, p3, :cond_1e

    .line 51
    :cond_1c
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_1d

    goto :goto_d

    :cond_1d
    move v1, v4

    :goto_d
    invoke-virtual {p1, v2, p2, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateHaloViewSize()V

    :cond_1e
    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRealDegree:I

    if-eq p1, p3, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedOrientation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    goto :goto_0

    .line 7
    :cond_0
    iput p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    .line 8
    :goto_0
    iput p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRealDegree:I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    iget p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string/jumbo p2, "provideOrientationChanged newDegree: %d mWatermarkDegree: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentMainContent"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRealDegree:I

    const-string v1, "FragmentMainContent"

    const/4 v2, 0x0

    if-eq v0, p2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    goto :goto_0

    .line 5
    :cond_0
    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    .line 6
    :goto_0
    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRealDegree:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string/jumbo v3, "provideRotateItem newDegree: %d mWatermarkDegree: %d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "provideRotateItem: mWatermarkDegree == newDegree"

    .line 9
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    rsub-int v1, p2, 0x168

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/AfRegionsView;->setOrientation(IZ)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, p2, v2}, Lcom/android/camera/trackfocus/TrackFocusView;->setOrientation(IZ)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    .line 15
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reShowFaceRect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->reShowFaceRect()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa6

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xd6

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public removeTiltShiftMask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    return-void
.end method

.method public setActiveIndicator(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return-void
.end method

.method public setAfRegionView([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoo;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ui/AfRegionsView;->setAfRegionRect([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AfRegionsView;->setCameraDisplayOrientation(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->setCameraDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public setDisplaySize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    return-void
.end method

.method public setEffectViewVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    :goto_0
    return-void
.end method

.method public setEvAdjustVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setEVVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p1}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    return-void
.end method

.method public setFaces(I[Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa6

    if-eq p1, v1, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->isFocusViewVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const-string p1, "FragmentMainContent"

    const-string/jumbo p2, "panorama mode or isIntentIDPhoto, return false"

    .line 5
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setFocusViewPosition(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->forceHideRect()V

    return-void
.end method

.method public setFocusViewType(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    return-void
.end method

.method public setIdPhotoBoxVisible(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoo0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoo0;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    :cond_0
    return-void
.end method

.method public setPreviewAspectRatio(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setPreviewSize(Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Z)V

    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowMagicMirror(Z)V

    return-void
.end method

.method public setSkipDrawFace(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    :cond_0
    return-void
.end method

.method public setVideoCastLayoutType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera2/autozoom/AutoZoomView;->setVideoCastLayoutType(I)V

    return-void
.end method

.method public setWatermarkVisible(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public showIndicator(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    :goto_0
    return-void
.end method

.method public showReviewViews(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method public startEvShowAgainAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->startEvShowAgainAnimation()V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa6

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xd6

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateCenterMarkSwitched()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6PreviewFrame;->updateCenterMarkSwitched(Z)V

    :cond_0
    return-void
.end method

.method public updateContentDescription()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v1, 0x7f12006e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateEffectViewVisible()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    return-void
.end method

.method public updateEffectViewVisible(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    return-void
.end method

.method public updateFaceView(ZZZZI)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p2}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    if-lez p5, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p5}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    if-eqz p4, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->resume()V

    :cond_3
    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->updateFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateReferenceGradienterSwitched()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isScanQRCodeIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->needReferenceLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/ui/V6PreviewFrame;->updateReferenceGradienterSwitched(ZZZ)V

    :cond_1
    return-void
.end method

.method public updateTopAlert(Z)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "updateTopAlert for AI watermark show = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v4, "FragmentMainContent"

    invoke-static {v2, v4, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xac

    .line 3
    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "longitude_latitude"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v7

    goto :goto_0

    :sswitch_2
    const-string v6, "location_time_2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v8

    goto :goto_0

    :sswitch_3
    const-string v6, "location_time_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v0

    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    if-eq v5, v0, :cond_2

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_1

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo;

    invoke-direct {v0, v1, v3}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo;-><init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_3
        0x241170a -> :sswitch_2
        0x708f48fc -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/trackfocus/TrackFocusView;->setTrackResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "updateWatermarkSample Item Key = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentMainContent"

    invoke-static {v2, v4, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkTipsIfNeeded(Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    .line 4
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateWatermarkItem(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v5

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    .line 8
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    .line 9
    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkItemBackground(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Landroid/graphics/Rect;)V

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedOrientation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    goto :goto_2

    .line 12
    :cond_4
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRealDegree:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    :goto_2
    if-nez p1, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->clearCaptureCoordinate()V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    .line 15
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkVisible(I)V

    :cond_6
    return-void
.end method

.method public updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 2

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateWatermarkSample"

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p1, "updateWatermarkSample item is null"

    .line 18
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOooo;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOooo;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

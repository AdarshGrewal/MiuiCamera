.class public Lcom/android/camera/fragment/CameraPresentation;
.super Landroid/app/Presentation;
.source "CameraPresentation.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final ESP_ANIM_CAPTURE_RUNNING:I = 0x2

.field public static final ESP_ANIM_CAPTURE_START:I = 0x1

.field public static final ESP_ANIM_NONE:I


# instance fields
.field public mAnimState:I

.field public mBlingAnimation:Landroid/view/animation/AlphaAnimation;

.field public final mCameraActivity:Lcom/android/camera/Camera;

.field public mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field public mCenterHCropRatio:F

.field public mCenterVCropRatio:F

.field public mCoverBottom:Landroid/view/View;

.field public mCoverLeft:Landroid/view/View;

.field public mCoverRight:Landroid/view/View;

.field public mCoverTop:Landroid/view/View;

.field public mCurrentMode:I

.field public mDegree:I

.field public mDelayNumberTv:Landroid/widget/TextView;

.field public mDensityPixel:F

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public mESPCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field public mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mHibernationCover:Landroid/view/View;

.field public mInited:Z

.field public mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

.field public mRecordLeftTimeSingleWidth:F

.field public mRecordLeftTimeTwoWidth:F

.field public mRecordLoadingLayout:Landroid/widget/FrameLayout;

.field public mRecordLoadingView:Landroid/widget/ImageView;

.field public mRecordRedIndicator:Landroid/widget/ImageView;

.field public mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mTextureView:Lcom/android/camera/ui/GLTextureView;

.field public mTextureViewHeight:I

.field public mTextureViewTop:I

.field public mTextureViewWidth:I

.field public mTimerBurstIndex:Landroid/widget/TextView;

.field public mTimerBurstTitle:Landroid/widget/LinearLayout;

.field public mTimerBurstTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    new-instance p2, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {p2}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mESPCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDensityPixel:F

    iput p3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCurrentMode:I

    iput p4, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/CameraPresentation;)Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method private draw(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Z)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getCurrentTransform()[F

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    invoke-interface {p2, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    invoke-static {v3, v0}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropVertical([FF)V

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    invoke-static {v3, v0}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropHorizontal([FF)V

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object p3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/gallery3d/ui/RawTexture;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v2, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    invoke-direct {p3, v0, v2, v1}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object p3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    :cond_1
    iget-object p3, p0, Lcom/android/camera/fragment/CameraPresentation;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez p3, :cond_2

    new-instance p3, Lcom/android/camera/effect/FrameBuffer;

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    const/4 v1, 0x0

    invoke-direct {p3, p2, v0, v1}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object p3, p0, Lcom/android/camera/fragment/CameraPresentation;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/CameraPresentation;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v4, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v4, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    iget v6, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private getTextViewHeight(Landroid/widget/TextView;I)F
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    const-string v3, ""

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    return p1
.end method

.method private initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    new-instance v0, Lcom/android/camera/fragment/CameraPresentation$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/CameraPresentation$1;-><init>(Lcom/android/camera/fragment/CameraPresentation;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateCapture()V
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mESPCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHoldAndSlide()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mESPCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    iput-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    :cond_3
    invoke-super {p0}, Landroid/app/Presentation;->cancel()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDelayNumberTv()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextureView()Lcom/android/camera/ui/GLTextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureView:Lcom/android/camera/ui/GLTextureView;

    return-object v0
.end method

.method public hideAutoHibernation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mHibernationCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideDelayNumber()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(I)V

    const p1, 0x7f0a0338

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/GLTextureView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureView:Lcom/android/camera/ui/GLTextureView;

    const p1, 0x7f0a0331

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    const p1, 0x7f0a00fc

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    const p1, 0x7f0a00f9

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    const p1, 0x7f0a00fa

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    const p1, 0x7f0a00fb

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    const p1, 0x7f0a0332

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mHibernationCover:Landroid/view/View;

    const p1, 0x7f0a0339

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    const p1, 0x7f0a033a

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstIndex:Landroid/widget/TextView;

    const p1, 0x7f0a033b

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTotal:Landroid/widget/TextView;

    const p1, 0x7f0a0334

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/VerticalTextView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const p1, 0x7f0a0337

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0a0336

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0335

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    const p1, 0x7f0a0333

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CameraPresentation;->initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    div-int/2addr v0, v2

    int-to-float v1, v1

    const v3, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07068a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDensityPixel:F

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    mul-int/lit8 v3, v1, 0x10

    div-int/lit8 v3, v3, 0x9

    sub-int/2addr v0, v3

    div-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07068c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    mul-int/lit8 v3, v1, 0x10

    div-int/lit8 v3, v3, 0x9

    sub-int/2addr v0, v3

    div-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    mul-int/lit8 v3, v1, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    div-int/2addr v0, v2

    int-to-float v1, v1

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07068d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/CameraPresentation;->getTextViewHeight(Landroid/widget/TextView;I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTimeSingleWidth:F

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/fragment/CameraPresentation;->getTextViewHeight(Landroid/widget/TextView;I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTimeTwoWidth:F

    iget p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/CameraPresentation;->setDegree(I)V

    iput-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->updateTextureSize()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/CameraRenderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_4

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v2

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-direct {p0, p1, v0, v4}, Lcom/android/camera/fragment/CameraPresentation;->draw(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Z)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p1, v0, v4}, Lcom/android/camera/fragment/CameraPresentation;->draw(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mESPCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    iget v4, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    invoke-virtual {p1, v6, v3, v4, v7}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    iput v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1, v0, v6}, Lcom/android/camera/fragment/CameraPresentation;->draw(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mESPCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p1, v0, v3}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result p1

    if-nez p1, :cond_3

    iput v6, p0, Lcom/android/camera/fragment/CameraPresentation;->mAnimState:I

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mESPCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p1, v0, v3}, Lcom/android/camera/CaptureAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    :cond_3
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public setDegree(I)V
    .locals 7

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const v0, 0x7f0a0348

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/CameraPresentation;->updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTimeSingleWidth:F

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCurrentMode:I

    const/16 v1, 0xb4

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTimeTwoWidth:F

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    const/16 v5, 0x5a

    const/high16 v6, 0x43340000    # 180.0f

    if-eq v2, v5, :cond_4

    if-eq v2, v1, :cond_3

    const/16 p1, 0x10e

    if-eq v2, p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setRotation(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setRotation(F)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    iget v2, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setRotation(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public setESPRecordingTimeState(I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    const-string v2, "/"

    const/4 v3, -0x1

    const/16 v4, 0xac

    const/16 v5, 0xa7

    const/16 v6, 0xa3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/16 v9, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0032

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    invoke-virtual {v1, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v2, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_0
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    :cond_2
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    iget-object v2, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto/16 :goto_0

    :pswitch_5
    iget v3, v0, Lcom/android/camera/fragment/CameraPresentation;->mCurrentMode:I

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_4

    const/16 v1, 0xad

    if-eq v3, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f110045

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    goto/16 :goto_0

    :cond_4
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f110046

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordingView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstIndex:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTotal:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_6
    iget v3, v0, Lcom/android/camera/fragment/CameraPresentation;->mCurrentMode:I

    const/16 v7, 0xa2

    if-eq v3, v7, :cond_8

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_6

    const/16 v1, 0xa9

    if-eq v3, v1, :cond_8

    if-eq v3, v4, :cond_8

    const/16 v1, 0xb4

    if-eq v3, v1, :cond_8

    const/16 v1, 0xb7

    if-eq v3, v1, :cond_8

    const/16 v1, 0xd6

    if-eq v3, v1, :cond_8

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const-string v2, "00:15"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstIndex:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTotal:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    iget v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordRedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mTimerBurstTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showAutoHibernation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mHibernationCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showDelayNumber(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f07068a

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/fragment/CameraPresentation;->mDensityPixel:F

    div-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/fragment/CameraPresentation;->mDensityPixel:F

    div-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    new-instance p2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-direct {p2, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const v1, 0x7f0a0348

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    if-eqz v0, :cond_6

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/camera/ui/VerticalAlignImageSpan;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0808c8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/VerticalAlignImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    const/16 v2, 0x21

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mRecordLeftTime:Lcom/android/camera/ui/VerticalTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateTextureSize()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    iput v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    if-eq v0, v10, :cond_4

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_5

    if-eq v0, v6, :cond_4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v7, v10

    iget v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    cmpl-float v11, v7, v10

    if-lez v11, :cond_2

    div-float/2addr v10, v7

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    goto :goto_0

    :cond_2
    cmpg-float v11, v7, v10

    if-gez v11, :cond_3

    div-float/2addr v7, v10

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    :cond_3
    :goto_0
    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    iput v9, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    mul-int/lit8 v7, v7, 0x10

    div-int/lit8 v7, v7, 0x9

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    iget v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    sub-int/2addr v10, v7

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    goto :goto_1

    :cond_5
    iget v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    mul-int/2addr v10, v8

    div-int/2addr v10, v7

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    :goto_1
    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    const/4 v10, 0x0

    invoke-static {v7, v10, v5}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v7

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    invoke-static {v7, v10, v5}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v5

    iput v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    const/16 v5, 0x8

    if-eq v0, v8, :cond_7

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    int-to-double v1, v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x9

    int-to-double v5, v0

    const-wide v7, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v5, v7

    sub-double/2addr v1, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v5

    double-to-int v0, v1

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iget v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_2
    return-void
.end method

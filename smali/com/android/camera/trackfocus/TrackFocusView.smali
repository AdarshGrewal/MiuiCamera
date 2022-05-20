.class public Lcom/android/camera/trackfocus/TrackFocusView;
.super Landroid/view/View;
.source "TrackFocusView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "TrackFocusView"


# instance fields
.field public OFFSET:Lmiuix/animation/property/ViewProperty;

.field public mActiveArraySize:Landroid/graphics/Rect;

.field public mCamera2TranslateMatrix:Landroid/graphics/Matrix;

.field public mCameraDisplayOrientation:I

.field public mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field public mCanvasMatrix:Landroid/graphics/Matrix;

.field public mDrawable:Lcom/android/camera/trackfocus/TrackFocusDrawable;

.field public mMatrix:Landroid/graphics/Matrix;

.field public mOrientation:I

.field public mRect:Landroid/graphics/Rect;

.field public mTemp:Landroid/graphics/RectF;

.field public mTrackResult:Lcom/android/camera/trackfocus/TrackResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "camera.feature.trackFocus.debug"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/camera/trackfocus/TrackFocusView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Lcom/android/camera/trackfocus/TrackFocusView$1;

    const-string/jumbo v1, "offset"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/trackfocus/TrackFocusView$1;-><init>(Lcom/android/camera/trackfocus/TrackFocusView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->OFFSET:Lmiuix/animation/property/ViewProperty;

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    .line 11
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    .line 12
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 13
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    .line 14
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    .line 15
    new-instance p2, Lcom/android/camera/trackfocus/TrackFocusView$1;

    const-string/jumbo v0, "offset"

    invoke-direct {p2, p0, v0}, Lcom/android/camera/trackfocus/TrackFocusView$1;-><init>(Lcom/android/camera/trackfocus/TrackFocusView;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->OFFSET:Lmiuix/animation/property/ViewProperty;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 21
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    .line 22
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    .line 23
    new-instance p2, Lcom/android/camera/trackfocus/TrackFocusView$1;

    const-string/jumbo p3, "offset"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/trackfocus/TrackFocusView$1;-><init>(Lcom/android/camera/trackfocus/TrackFocusView;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->OFFSET:Lmiuix/animation/property/ViewProperty;

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/trackfocus/TrackFocusView;)Lcom/android/camera/trackfocus/TrackFocusDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mDrawable:Lcom/android/camera/trackfocus/TrackFocusDrawable;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 2
    new-instance v0, Lcom/android/camera/trackfocus/TrackFocusDrawable;

    invoke-direct {v0, p1}, Lcom/android/camera/trackfocus/TrackFocusDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mDrawable:Lcom/android/camera/trackfocus/TrackFocusDrawable;

    return-void
.end method

.method private prepareMatrix()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v2}, Lcom/android/camera/trackfocus/TrackResult;->getZoomRatio()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v5

    .line 6
    iget v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraDisplayOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v0, v1

    :goto_1
    move v4, v0

    .line 9
    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraDisplayOrientation:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 12
    invoke-static/range {v1 .. v9}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-void
.end method

.method private startShowAnimation()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    new-instance v1, Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->OFFSET:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, -0x3fb7000000000000L    # -50.0

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 4
    new-instance v2, Lmiuix/animation/controller/AnimState;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/trackfocus/TrackFocusView;->OFFSET:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    .line 6
    new-instance v3, Lmiuix/animation/controller/AnimState;

    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {v3, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 7
    invoke-virtual {v3, v6, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    .line 8
    new-instance v6, Lmiuix/animation/controller/AnimState;

    sget-object v7, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {v6, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 9
    invoke-virtual {v6, v7, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/view/View;

    aput-object p0, v6, v0

    .line 10
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v8, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v9, v5, [F

    const/high16 v10, 0x43480000    # 200.0f

    aput v10, v9, v0

    const/4 v10, 0x6

    .line 11
    invoke-virtual {v8, v10, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-interface {v6, v3, v4, v7}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    const/4 v7, -0x2

    .line 12
    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v3, v1, v2, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private transToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    const-string v0, "TrackFocusView"

    const-string v1, "clear"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public getDrawable()Lcom/android/camera/trackfocus/TrackFocusDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mDrawable:Lcom/android/camera/trackfocus/TrackFocusDrawable;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/TrackResult;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/trackfocus/TrackFocusView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mDrawable:Lcom/android/camera/trackfocus/TrackFocusDrawable;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v1}, Lcom/android/camera/trackfocus/TrackResult;->isManualTrackMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->setManualTrackMode(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mDrawable:Lcom/android/camera/trackfocus/TrackFocusDrawable;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->setRect(Landroid/graphics/Rect;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mDrawable:Lcom/android/camera/trackfocus/TrackFocusDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraDisplayOrientation:I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/trackfocus/TrackResult;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/trackfocus/TrackFocusView;->startShowAnimation()V

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTrackResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeArraySize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackFocusView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    .line 7
    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 8
    invoke-direct {p0}, Lcom/android/camera/trackfocus/TrackFocusView;->prepareMatrix()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    return-void
.end method

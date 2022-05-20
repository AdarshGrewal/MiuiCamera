.class public Lcom/android/camera/wideselfie/WideSelfieConfig;
.super Ljava/lang/Object;
.source "WideSelfieConfig.java"


# static fields
.field public static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/camera/wideselfie/WideSelfieConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "WideSelfieConstants"

.field public static final THUMB_BORDER:I = 0x1

.field public static final UI_RATE:F = 1.3333334f


# instance fields
.field public mStillPreviewHeight:I

.field public mStillPreviewWidth:I

.field public mThumbBgHeight:I

.field public mThumbBgHeightVertical:I

.field public mThumbBgTopMargin:I

.field public mThumbBgTopMarginVertical:I

.field public mThumbBgWidth:I

.field public mThumbBgWidthVertical:I

.field public mThumbViewHeight:I

.field public mThumbViewHeightVertical:I

.field public mThumbViewTopMargin:I

.field public mThumbViewTopMarginVertical:I

.field public mThumbViewWidth:I

.field public mThumbViewWidthVertical:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/camera/wideselfie/WideSelfieConfig;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;
    .locals 3

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera/wideselfie/WideSelfieConfig;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/wideselfie/WideSelfieConfig;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Lcom/android/camera/wideselfie/WideSelfieConfig;

    invoke-direct {v0, p0}, Lcom/android/camera/wideselfie/WideSelfieConfig;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object v1, Lcom/android/camera/wideselfie/WideSelfieConfig;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public getStillPreviewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewHeight:I

    return v0
.end method

.method public getStillPreviewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewWidth:I

    return v0
.end method

.method public getThumbBgHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgHeight:I

    return v0
.end method

.method public getThumbBgHeightVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgHeightVertical:I

    return v0
.end method

.method public getThumbBgTopMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgTopMargin:I

    return v0
.end method

.method public getThumbBgTopMarginVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgTopMarginVertical:I

    return v0
.end method

.method public getThumbBgWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgWidth:I

    return v0
.end method

.method public getThumbBgWidthVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgWidthVertical:I

    return v0
.end method

.method public getThumbViewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewHeight:I

    return v0
.end method

.method public getThumbViewHeightVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewHeightVertical:I

    return v0
.end method

.method public getThumbViewTopMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewTopMargin:I

    return v0
.end method

.method public getThumbViewTopMarginVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewTopMarginVertical:I

    return v0
.end method

.method public getThumbViewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewWidth:I

    return v0
.end method

.method public getThumbViewWidthVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewWidthVertical:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07082a

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewWidth:I

    int-to-float v0, v0

    const v1, 0x3faaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewHeight:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStillPreviewWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStillPreviewHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfieConstants"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f070827

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgWidth:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThumbBgWidth "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStillPreviewWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f070823

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgHeight:I

    const v0, 0x7f070825

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgTopMargin:I

    const v0, 0x7f070828

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgWidthVertical:I

    const v0, 0x7f070824

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgHeightVertical:I

    const v0, 0x7f070826

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgTopMarginVertical:I

    .line 12
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgWidth:I

    iget v1, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewWidth:I

    .line 13
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewHeight:I

    .line 14
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgTopMargin:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewTopMargin:I

    .line 15
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgWidthVertical:I

    iget v1, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mStillPreviewHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewWidthVertical:I

    .line 16
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbBgHeightVertical:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewHeightVertical:I

    add-int/lit8 p1, p1, 0x1

    .line 17
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieConfig;->mThumbViewTopMarginVertical:I

    return-void
.end method

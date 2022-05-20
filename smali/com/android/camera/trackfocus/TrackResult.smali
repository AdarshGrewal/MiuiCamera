.class public Lcom/android/camera/trackfocus/TrackResult;
.super Ljava/lang/Object;
.source "TrackResult.java"


# static fields
.field public static final EMPTY:Lcom/android/camera/trackfocus/TrackResult;

.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final TAG:Ljava/lang/String; = "TrackResult"

.field public static final TRACK_MODE_AUTO:I = 0x0

.field public static final TRACK_MODE_MANUAL:I = 0x1

.field public static final TRACK_ZOOM_RATIO_INVALID:I = 0x0

.field public static final TYPE_BODY:I = 0x1

.field public static final TYPE_CAT:I = 0x2

.field public static final TYPE_DOG:I = 0x3

.field public static final TYPE_FACE:I = 0x4

.field public static final TYPE_NONE:I = -0x1


# instance fields
.field public mResultROI:Landroid/graphics/Rect;

.field public mResultType:I

.field public mTrackMode:I

.field public mZoomRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 2
    new-instance v2, Lcom/android/camera/trackfocus/TrackResult;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/camera/trackfocus/TrackResult;-><init>(Landroid/graphics/Rect;IIF)V

    sput-object v2, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/trackfocus/TrackResult;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_0
    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    .line 3
    iput p2, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    .line 4
    iput p3, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    .line 5
    iput p4, p0, Lcom/android/camera/trackfocus/TrackResult;->mZoomRatio:F

    return-void
.end method

.method public static parseTrackResult(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/trackfocus/TrackResult;
    .locals 5

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2
    sget-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getZoomRatio(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureResult;)F

    move-result p0

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const/4 v3, 0x1

    aput-object v1, p1, v3

    const/4 v3, 0x2

    aput-object v2, p1, v3

    const/4 v3, 0x3

    aput-object v1, p1, v3

    const-string v3, "TrackResult"

    const-string/jumbo v4, "parseTrackResult rect %s, mode %s, type %s"

    .line 5
    invoke-static {v3, v4, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/camera/trackfocus/TrackResult;-><init>(Landroid/graphics/Rect;IIF)V

    return-object p1

    .line 7
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p0

    .line 8
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p0
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    return v0
.end method

.method public getTrackMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mZoomRatio:F

    return v0
.end method

.method public isFace()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManualTrackMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowMultiGrid()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackResult{mResultROI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTrackMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

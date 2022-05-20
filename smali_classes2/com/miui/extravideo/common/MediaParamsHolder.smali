.class public Lcom/miui/extravideo/common/MediaParamsHolder;
.super Ljava/lang/Object;
.source "MediaParamsHolder.java"


# static fields
.field public static final KEY_FORMAT_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field public static final KEY_FORMAT_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field public static final KEY_FORMAT_CROP_TOP:Ljava/lang/String; = "crop-top"


# instance fields
.field public intervalPaddingSize:I

.field public leftPaddingSize:I

.field public mimeType:Ljava/lang/String;

.field public stride:I

.field public topPaddingSize:I

.field public videoDegree:I

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    .line 3
    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    .line 4
    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    .line 5
    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->stride:I

    .line 6
    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->topPaddingSize:I

    .line 7
    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->leftPaddingSize:I

    .line 8
    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->intervalPaddingSize:I

    return-void
.end method


# virtual methods
.method public setFormat(Landroid/media/MediaFormat;)V
    .locals 2

    const-string v0, "stride"

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->stride:I

    const-string v0, "crop-top"

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->topPaddingSize:I

    const-string v0, "crop-bottom"

    .line 3
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-left"

    .line 4
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->leftPaddingSize:I

    const-string v1, "height"

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget v1, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->topPaddingSize:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 7
    iput p1, p0, Lcom/miui/extravideo/common/MediaParamsHolder;->intervalPaddingSize:I

    return-void
.end method

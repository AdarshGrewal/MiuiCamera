.class public Lcom/arcsoft/camera/wideselfie/AwsInitParameter;
.super Ljava/lang/Object;
.source "AwsInitParameter.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public cameraViewAngleForHeight:F

.field public cameraViewAngleForWidth:F

.field public changeDirectionThumbThreshold:I

.field public convertNV21:Z

.field public d:I

.field public e:I

.field public f:I

.field public guideStableBarThumbHeight:I

.field public guideStopBarThumbHeight:I

.field public maxResultWidth:I

.field public mode:I

.field public progressBarThumbHeight:I

.field public progressBarThumbHeightCropRatio:F

.field public resultAngleForHeight:F

.field public resultAngleForWidth:F

.field public thumbnailHeight:I

.field public thumbnailWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultInitParams(IIII)Lcom/arcsoft/camera/wideselfie/AwsInitParameter;
    .locals 3

    .line 1
    new-instance v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;

    invoke-direct {v0}, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->a:I

    const/16 v2, 0x40

    .line 3
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->mode:I

    const v2, 0x422bee7d

    .line 4
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForHeight:F

    const v2, 0x425d34a2

    .line 5
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForWidth:F

    const/high16 v2, 0x43340000    # 180.0f

    .line 6
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->resultAngleForWidth:F

    .line 7
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->resultAngleForHeight:F

    const/16 v2, 0x78

    .line 8
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->changeDirectionThumbThreshold:I

    .line 9
    iput p2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->b:I

    .line 10
    iput p0, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->c:I

    .line 11
    iput p1, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->d:I

    .line 12
    iput p2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->e:I

    .line 13
    iput p0, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    .line 14
    iput p1, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    .line 15
    iput p3, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->f:I

    .line 16
    iput v1, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStopBarThumbHeight:I

    .line 17
    iput v1, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->maxResultWidth:I

    .line 18
    iput v1, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeight:I

    const/4 p0, 0x5

    .line 19
    iput p0, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStableBarThumbHeight:I

    const/4 p0, 0x0

    .line 20
    iput p0, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeightCropRatio:F

    .line 21
    iput-boolean v1, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->convertNV21:Z

    return-object v0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->a:I

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->f:I

    return v0
.end method

.method public getFullImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->d:I

    return v0
.end method

.method public getFullImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->c:I

    return v0
.end method

.method public getSrcFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->b:I

    return v0
.end method

.method public getThumbForamt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->e:I

    return v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    return v0
.end method

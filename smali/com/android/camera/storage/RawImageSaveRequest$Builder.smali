.class public Lcom/android/camera/storage/RawImageSaveRequest$Builder;
.super Ljava/lang/Object;
.source "RawImageSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/RawImageSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public captureResult:Landroid/hardware/camera2/CaptureResult;

.field public characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public data:[B

.field public dateTaken:J

.field public height:I

.field public orientation:I

.field public title:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->data:[B

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->captureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->dateTaken:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->width:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->height:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->orientation:I

    return p0
.end method


# virtual methods
.method public build()Lcom/android/camera/storage/RawImageSaveRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/storage/RawImageSaveRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/RawImageSaveRequest;-><init>(Lcom/android/camera/storage/RawImageSaveRequest$Builder;Lcom/android/camera/storage/RawImageSaveRequest$1;)V

    return-object v0
.end method

.method public setCaptureResult(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->captureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public setCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method public setData([B)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->data:[B

    return-object p0
.end method

.method public setDateTaken(J)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->dateTaken:J

    return-object p0
.end method

.method public setHeight(I)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->height:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->orientation:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->width:I

    return-object p0
.end method

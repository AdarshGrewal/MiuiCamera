.class public final Lcom/android/camera/module/video/JpegPictureCallback;
.super Ljava/lang/Object;
.source "JpegPictureCallback.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "JpegPictureCallback"


# instance fields
.field public mLocation:Landroid/location/Location;

.field public mPictureSize:Lcom/android/camera/CameraSize;

.field public mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

.field public mSaver:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Landroid/location/Location;Lcom/android/camera/CameraSize;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mLocation:Landroid/location/Location;

    iput-object p2, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mPictureSize:Lcom/android/camera/CameraSize;

    iput-object p3, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-object p1, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mLocation:Landroid/location/Location;

    iput-object p4, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method private needImageThumbnail(I)Z
    .locals 1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v2

    new-instance v3, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v3}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lcom/android/camera/module/video/JpegPictureCallback;->needImageThumbnail(I)Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    invoke-virtual {v3, p2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    iget-object p1, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mPictureSize:Lcom/android/camera/CameraSize;

    iget p1, p1, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    iget-object p1, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mPictureSize:Lcom/android/camera/CameraSize;

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    invoke-virtual {v3, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    const/4 p1, -0x1

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    iget-object p1, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mSaver:Lcom/android/camera/storage/ImageSaver;

    const/4 p2, 0x0

    invoke-virtual {p1, v3, p2}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 1

    const-string p2, "JpegPictureCallback"

    const-string/jumbo v0, "onPictureTaken"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mSnapshotInProgress:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/video/JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/video/JpegPictureCallback;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

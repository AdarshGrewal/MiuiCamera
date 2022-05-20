.class public Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "WideSelfieModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/WideSelfieModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public mActualCameraId:I

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

.field public final mFileName:Ljava/lang/String;

.field public mHeight:I

.field public mMirror:Z

.field public mNv21Data:[B

.field public mOrientation:I

.field public mStopMode:Ljava/lang/String;

.field public mTriggerMode:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;[BIIZIIILcom/android/camera/fragment/beauty/BeautyValues;Ljava/lang/String;Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    .line 4
    iput p4, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    .line 5
    iput p5, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    .line 6
    iput-boolean p6, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mMirror:Z

    .line 7
    iput p8, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActualCameraId:I

    .line 8
    iput p7, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    .line 9
    iput p9, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mTriggerMode:I

    .line 10
    iput-object p10, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 11
    iput-object p11, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    .line 12
    iput-object p12, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

    .line 13
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V
    .locals 23

    move-object/from16 v8, p1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz p3, :cond_0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v13, ""

    move-object/from16 v9, p3

    move-wide v10, v6

    move/from16 v15, p6

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, v5

    .line 3
    invoke-static/range {v9 .. v20}, Lcom/android/camera/ExifTool;->updateExif([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;Landroid/hardware/camera2/impl/CameraMetadataNative;Z)[B

    move-result-object v15

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v10, p2

    move-wide v11, v6

    move-object v13, v5

    move/from16 v14, p6

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-static/range {v9 .. v22}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-wide v3, v6

    move-object v9, v5

    move-wide v10, v6

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/camera/storage/Storage;->addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v0

    move/from16 v1, p6

    .line 6
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V

    :goto_0
    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addImageAsApplication uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    .line 10
    iget-object v2, v1, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    if-eqz v0, :cond_2

    move-object/from16 v3, p2

    .line 12
    invoke-virtual {v2, v0, v3}, Lcom/android/camera/ActivityBase;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 13
    invoke-static {v2, v0, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v4

    .line 14
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addImageAsApplication Thumbnail = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {v2, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 16
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 26

    move-object/from16 v7, p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyShowLevel()I

    move-result v0

    move v14, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    move v14, v0

    :goto_0
    const/4 v15, 0x1

    if-gtz v0, :cond_2

    if-lez v14, :cond_7

    .line 7
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000o0oo()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    move/from16 v21, v1

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v21, v2

    goto :goto_1

    :cond_4
    move/from16 v21, v15

    .line 9
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 10
    new-instance v1, Lcom/android/camera/beautyshot/BeautyShot;

    invoke-direct {v1}, Lcom/android/camera/beautyshot/BeautyShot;-><init>()V

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/beautyshot/BeautyShot;->init(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beautyShot start  mWidth "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mHeight = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    .line 13
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beautyLevel "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v5, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    const/16 v20, 0x10e

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/camera/beautyshot/BeautyShot;->processByBeautyLevel([BIIIII)I

    goto :goto_2

    :cond_5
    if-lez v14, :cond_6

    .line 15
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beautyLevel smooth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v9, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v10, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v11, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    const/16 v12, 0x10e

    move-object v8, v1

    move/from16 v13, v21

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/beautyshot/BeautyShot;->processBySmoothLevel([BIIIII)I

    .line 17
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/android/camera/beautyshot/BeautyShot;->uninit()V

    .line 18
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beautyShot end, time = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_7
    iget-boolean v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mMirror:Z

    if-eqz v0, :cond_9

    .line 20
    iget v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_8

    .line 21
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v0, v1, v3}, Lcom/android/camera/beautyshot/BeautyShot;->flipYuvVertical([BII)V

    goto :goto_3

    .line 22
    :cond_8
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v0, v1, v3}, Lcom/android/camera/beautyshot/BeautyShot;->flipYuvHorizontal([BII)V

    .line 23
    :cond_9
    :goto_3
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ImageHelper;->encodeNv21ToJpeg([BIII)[B

    move-result-object v3

    const/4 v8, 0x0

    if-nez v3, :cond_a

    .line 24
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpegData is null, can\'t save"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 25
    :cond_a
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 27
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_b

    goto :goto_4

    .line 28
    :cond_b
    invoke-static {v1, v3}, LOooO00o/OooO0OO/OooO00o/OooO00o/OooO0OO;->OooO00o(Ljava/lang/String;[B)I

    .line 29
    iget-object v2, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v5, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    iget v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V

    goto :goto_5

    .line 30
    :cond_c
    :goto_4
    iget-object v2, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v5, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    iget v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V

    .line 31
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xb0

    .line 33
    iget v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mTriggerMode:I

    const/16 v21, 0x1

    iget v2, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActualCameraId:I

    iget-object v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/16 v24, 0x0

    const-string v25, "auto-off"

    move-object/from16 v16, v0

    move/from16 v20, v1

    move/from16 v22, v2

    move-object/from16 v23, v3

    invoke-static/range {v16 .. v25}, Lcom/android/camera/statistic/CameraStatUtils;->trackGeneralInfo(Ljava/util/Map;ZZIIZILcom/android/camera/fragment/beauty/BeautyValues;Lcom/android/camera/MutexModeManager;Ljava/lang/String;)V

    .line 34
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureTakenInWideSelfie(Ljava/lang/String;Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-object v8
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;->onSaveCompleted()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreExecute recordState is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 5
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    return-void
.end method

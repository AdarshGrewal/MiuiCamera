.class public Lcom/android/camera/aiwatermark/data/WatermarkItem;
.super Ljava/lang/Object;
.source "WatermarkItem.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WatermarkItem"

.field public static final mLocationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ALTITUDE:Ljava/lang/String;

.field public final TIMER:Ljava/lang/String;

.field public final TIMER_INTERVAL:J

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mCaptureCoordinate:[I

.field public mCoordinate:[I

.field public mCountry:I

.field public mHasAltitude:Z

.field public mHasMove:Z

.field public mKey:Ljava/lang/String;

.field public mLimitArea:Landroid/graphics/Rect;

.field public mLocation:I

.field public mLocationDataRunnable:Ljava/lang/Runnable;

.field public mQueueCoordinate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[I>;"
        }
    .end annotation
.end field

.field public mResId:I

.field public mResRvItem:I

.field public mText:Ljava/lang/String;

.field public mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    .line 6
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    .line 7
    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    .line 8
    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 9
    iput-object v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    new-array v0, v0, [I

    .line 10
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    .line 12
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "timer"

    .line 13
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER:Ljava/lang/String;

    const-wide/32 v1, 0x2bf20

    .line 14
    iput-wide v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER_INTERVAL:J

    .line 15
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    const-string v1, "altitude"

    .line 16
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->ALTITUDE:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    .line 18
    new-instance v0, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;

    invoke-direct {v0, p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;-><init>(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationDataRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    const/4 v2, -0x1

    .line 27
    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    .line 28
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    .line 29
    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    .line 30
    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 31
    iput-object v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    new-array v0, v0, [I

    .line 32
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    .line 34
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "timer"

    .line 35
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER:Ljava/lang/String;

    const-wide/32 v1, 0x2bf20

    .line 36
    iput-wide v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER_INTERVAL:J

    .line 37
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    const-string v1, "altitude"

    .line 38
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->ALTITUDE:Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    .line 40
    new-instance v0, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;

    invoke-direct {v0, p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;-><init>(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationDataRunnable:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    .line 43
    iput-object p3, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    .line 45
    iput p5, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 22
    iput p6, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 20
    iput p7, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/location/Location;Landroid/location/Geocoder;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getDataFromGeocoder(Landroid/location/Location;Landroid/location/Geocoder;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findAltitude(Landroid/location/Location;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const-string v1, "altitude"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%.1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->commit()Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getDataFromGeocoder(Landroid/location/Location;Landroid/location/Geocoder;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Landroid/location/Geocoder;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "[getDataFromGeocoder] start"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/16 v8, 0xa

    move-object v3, p2

    .line 5
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 8
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-direct {p0, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    move v3, p2

    .line 12
    :goto_0
    invoke-virtual {v2}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 13
    invoke-virtual {v2, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAddress] ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_2
    sget-object p1, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    const-string p2, "[getDataFromGeocoder] end"

    invoke-static {v1, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getHourFormat(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "HH"

    return-object p1

    :cond_0
    const-string p1, "hh"

    return-object p1
.end method

.method private getLocationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p2

    .line 5
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_7

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ltz p3, :cond_6

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-ltz p3, :cond_5

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 8
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    add-int/2addr p3, p4

    goto :goto_1

    :cond_5
    return-object p1

    .line 10
    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_7
    :goto_3
    return-object p1
.end method


# virtual methods
.method public clearCaptureCoordinate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCaptureCoordinate()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    return-object v0
.end method

.method public getCoordinate()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    return-object v0
.end method

.method public getCountry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitArea()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLimitArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return v0
.end method

.method public getLocationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    return v0
.end method

.method public getResRvItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeWatermarkString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getTimeWatermarkType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeWatermarkType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_4"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_6"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    return v0
.end method

.method public getWatermarkText(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "super_moon_text_6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "super_moon_text_4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "super_moon_text_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "longitude_latitude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "location_time_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "location_time_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    const-string v5, ":mm"

    const-string v6, "-"

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocationDirectly()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->findAltitude(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasAltitude(Z)V

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p2, v3, [Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "m"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    move-object p2, v0

    .line 7
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v5, v0, v2

    if-lez v5, :cond_2

    const-string/jumbo v5, "\u00b0E"

    goto :goto_3

    :cond_2
    const-string/jumbo v5, "\u00b0W"

    .line 8
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    new-array v6, v4, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "%.3f"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v7

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    cmpl-double p1, v5, v2

    if-lez p1, :cond_3

    const-string/jumbo p1, "\u00b0N"

    goto :goto_4

    :cond_3
    const-string/jumbo p1, "\u00b0S"

    .line 12
    :goto_4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    goto/16 :goto_7

    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->initLocationList()Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    invoke-direct {p0, p1, v1, v7, v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "yyyy.MM.dd "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getHourFormat(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p2, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    goto :goto_5

    :pswitch_2
    new-array v0, v2, [Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dd-MM.dd "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getHourFormat(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, p2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v7

    aput-object p2, v0, v7

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    aput-object p2, v0, v4

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->initLocationList()Ljava/util/ArrayList;

    move-result-object p2

    .line 25
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    :goto_5
    move-object p2, v0

    goto/16 :goto_7

    :pswitch_3
    new-array p2, v4, [Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->initLocationList()Ljava/util/ArrayList;

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, v0, v4, v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v7

    goto :goto_7

    :pswitch_4
    new-array p2, v4, [Ljava/lang/String;

    .line 28
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "\'\u2014\u3000\'yyyy\'\u3000\u2014\'"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v7

    goto :goto_7

    .line 30
    :pswitch_5
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "dd-MMM"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    .line 32
    :pswitch_6
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "HH:mm-MMM dd\'th\'.yyyy"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    .line 34
    :pswitch_7
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "MMM-dd-hh:mm a"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_4
    :goto_6
    const/4 p2, 0x0

    :goto_7
    return-object p2

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
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasAltitude()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    return v0
.end method

.method public hasMove()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    return v0
.end method

.method public initLocationList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const-string/jumbo v3, "timer"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0x2bf20

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    .line 3
    sget-object v2, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    const-string v1, "In 3 min do not fresh the location list"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->commit()Z

    .line 7
    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationDataRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    :goto_1
    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLocationWatermark()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location_time_1"

    .line 2
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location_time_2"

    .line 3
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "longitude_latitude"

    .line 4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTextWatermark()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_1"

    .line 2
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_4"

    .line 3
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_6"

    .line 4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location"

    .line 5
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location_time_1"

    .line 6
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location_time_2"

    .line 7
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "longitude_latitude"

    .line 8
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setCaptureCoordinate([I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    return-void
.end method

.method public setCountry(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return-void
.end method

.method public setHasAltitude(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    return-void
.end method

.method public setHasMove(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLimitArea(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLimitArea:Landroid/graphics/Rect;

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    return-void
.end method

.method public setResRvItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatermarkItem: key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; text is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; res id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; location is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; country is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCountry()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCoordinate([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    return-void
.end method

.method public updateViewBitmap(Landroid/view/View;I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {v0, p2, p1}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

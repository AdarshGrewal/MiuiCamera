.class public Lcom/android/camera/fragment/vv/VVItem;
.super Lcom/android/camera/resource/BaseResourceItem;
.source "VVItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/fragment/vv/VVItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DURATION_WATERMARK:I = 0x7d0

.field public static final ID_PREFIX:Ljava/lang/String; = "vv"


# instance fields
.field public audioOffset:J

.field public composeJsonPath:Ljava/lang/String;

.field public configJsonPath:Ljava/lang/String;

.field public coverPath:Ljava/lang/String;

.field public durationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public filterPath:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public transient index:I

.field public isValid:Z

.field public musicPath:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public placeholder:Ljava/lang/String;

.field public previewVideoPath:Ljava/lang/String;

.field public rawInfo:Ljava/lang/String;

.field public speedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public totalDuration:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/vv/VVItem$1;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVItem$1;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/vv/VVItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceItem;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/VVItem;->isValid:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceItem;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->previewVideoPath:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->filterPath:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->configJsonPath:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->composeJsonPath:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    .line 12
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    return-void
.end method

.method public static final createFromRawInfo(Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVItem;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/Util;->getContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/vv/VVItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVItem;-><init>()V

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, v2, p0}, Lcom/android/camera/fragment/vv/VVItem;->parseSummaryData(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/vv/VVItem;->simpleVerification(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 8
    :cond_1
    invoke-virtual {v0, v2, p0}, Lcom/android/camera/fragment/vv/VVItem;->onDecompressFinished(Ljava/lang/String;Z)V

    return-object v0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillDetailData(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public getDuration(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEssentialFragmentSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIDPrefix()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vv"

    return-object v0
.end method

.method public getTotalDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    return-wide v0
.end method

.method public isCloudItem()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->placeholder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDecompressFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/camera/resource/BaseResourceItem;->mZipPath:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    :cond_0
    return-void
.end method

.method public onDecompressFinished(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pv/cover.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pv/preview.mov"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->previewVideoPath:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->filterPath:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->configJsonPath:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "compose.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->composeJsonPath:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bgm.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceItem;->onUpToDate(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    :cond_0
    return-void
.end method

.method public parseSummaryData(Lorg/json/JSONObject;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->rawInfo:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/vv/VVItem;->index:I

    const-string p2, "exclude"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/fragment/vv/VVItem;->isValid:Z

    return-void

    :cond_0
    const-string p2, "include"

    .line 6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/fragment/vv/VVItem;->isValid:Z

    return-void

    :cond_1
    const-string p2, "id"

    .line 9
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo p2, "versionCode"

    .line 10
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    const-string/jumbo p2, "uri"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    const-string/jumbo p2, "placeholder"

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->placeholder:Ljava/lang/String;

    const-string p2, "iconUrl"

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->iconUrl:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-string p2, "audioOffset"

    .line 14
    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/fragment/vv/VVItem;->audioOffset:J

    const-string p2, "fragments"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const-string/jumbo v0, "speed"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    move v2, v1

    .line 18
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    .line 20
    iget-object v5, p0, Lcom/android/camera/fragment/vv/VVItem;->speedList:Ljava/util/List;

    if-nez v5, :cond_2

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/camera/fragment/vv/VVItem;->speedList:Ljava/util/List;

    .line 22
    :cond_2
    iget-object v5, p0, Lcom/android/camera/fragment/vv/VVItem;->speedList:Ljava/util/List;

    double-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-long v3, v5

    .line 24
    iget-object v5, p0, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-wide v3, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_4
    iget-wide v2, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    const-string/jumbo p2, "overlapping"

    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_5

    move v0, v1

    .line 28
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 29
    iget-wide v2, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v0, "i18n"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 32
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "lang"

    .line 34
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "name"

    if-eqz v3, :cond_6

    .line 36
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    goto :goto_3

    .line 37
    :cond_6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 38
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method

.method public simpleVerification(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "config.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v2, "compose.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pv/preview.mov"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->previewVideoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->filterPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->configJsonPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->composeJsonPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 9
    iget-wide v0, p0, Lcom/android/camera/fragment/vv/VVItem;->totalDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

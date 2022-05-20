.class public Lcom/android/camera/resource/tmmusic/TMMusicItem;
.super Lcom/android/camera/resource/BaseResourceItem;
.source "TMMusicItem.java"


# instance fields
.field public albumImage320:Ljava/lang/String;

.field public albumName:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public auditionBegin:J

.field public auditionEnd:J

.field public detailName:Ljava/lang/String;

.field public detailTotalDuration:Ljava/lang/String;

.field public detailVersion:Ljava/lang/String;

.field public fileExtension:Ljava/lang/String;

.field public fileSize:Ljava/lang/String;

.field public itemID:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceItem;-><init>()V

    return-void
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

.method public getDuration()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->auditionEnd:J

    iget-wide v2, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->auditionBegin:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getIDPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDecompressFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDecompressFinished(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public parseDownloadInfo(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public parseSummaryData(Lorg/json/JSONObject;I)V
    .locals 2

    const-string p2, "itemID"

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->itemID:Ljava/lang/String;

    const-string p2, "datainfo"

    .line 2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "name"

    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->detailName:Ljava/lang/String;

    const-string/jumbo v0, "version"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->detailVersion:Ljava/lang/String;

    const-string v0, "duration"

    .line 5
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->detailTotalDuration:Ljava/lang/String;

    const-string v0, "auditionBegin"

    .line 6
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->auditionBegin:J

    const-string v0, "auditionEnd"

    .line 7
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->auditionEnd:J

    const-string p2, "album"

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "albumName"

    .line 9
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->albumName:Ljava/lang/String;

    const-string v0, "imagePathMap"

    .line 10
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->albumImage320:Ljava/lang/String;

    const-string p2, "artists"

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "artistName"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;->artistName:Ljava/lang/String;

    return-void
.end method

.method public simpleVerification(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method

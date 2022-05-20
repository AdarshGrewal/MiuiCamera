.class public Lcom/android/camera/fragment/film/FilmList;
.super Lcom/android/camera/resource/BaseResourceList;
.source "FilmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/BaseResourceList<",
        "Lcom/android/camera/fragment/film/FilmItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceList;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    const-string v0, "data"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getLocalVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getResourceType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public parseInitialData(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/film/FilmItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/film/FilmItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FilmItem;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/film/FilmItem;->parseSummaryData(Lorg/json/JSONObject;I)V

    return-object v0
.end method

.method public bridge synthetic parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/film/FilmList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/film/FilmItem;

    move-result-object p1

    return-object p1
.end method

.method public setLocalVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

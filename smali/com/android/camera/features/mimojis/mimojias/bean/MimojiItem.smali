.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;
.super Lcom/android/camera/resource/BaseResourceItem;
.source "MimojiItem.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/BaseResourceItem;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceItem;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->compareTo(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillDetailData(Lorg/json/JSONObject;)V
    .locals 0

    return-void
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

.method public parseSummaryData(Lorg/json/JSONObject;I)V
    .locals 0

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

.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;
.super Ljava/lang/Object;
.source "MimojiLevelInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile mConfigType:I

.field public volatile mConfigTypeName:Ljava/lang/String;

.field public mThumnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo$1;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mThumnails:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mThumnails:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mConfigTypeName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mConfigType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorConfigInfos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mConfigType:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getSubConfigColorList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getColorType()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mConfigType:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getColorType(I)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mConfigTypeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiLevelInfo;->mConfigType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

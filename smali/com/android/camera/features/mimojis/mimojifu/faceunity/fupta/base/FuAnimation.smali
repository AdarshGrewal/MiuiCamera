.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;
.super Ljava/lang/Object;
.source "FuAnimation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avatar:[Ljava/lang/Integer;

.field public gender:I

.field public icon:I

.field public isPose:Z

.field public scene:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation$1;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->isPose:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->isPose:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->icon:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->scene:I

    .line 7
    const-class v1, [Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->avatar:[Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->isPose:Z

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->gender:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()[Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->avatar:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->gender:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->icon:I

    return v0
.end method

.method public getScene()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->scene:I

    return v0
.end method

.method public isPose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->isPose:Z

    return v0
.end method

.method public setAvatar([Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->avatar:[Ljava/lang/Integer;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->gender:I

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->icon:I

    return-void
.end method

.method public setPose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->isPose:Z

    return-void
.end method

.method public setScene(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->scene:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->icon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->scene:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->avatar:[Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->isPose:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAnimation;->gender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

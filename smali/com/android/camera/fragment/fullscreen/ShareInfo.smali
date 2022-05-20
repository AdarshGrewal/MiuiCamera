.class public Lcom/android/camera/fragment/fullscreen/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/fragment/fullscreen/ShareInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public className:Ljava/lang/String;

.field public drawableRes:I

.field public index:I

.field public packageName:Ljava/lang/String;

.field public textRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/fullscreen/ShareInfo$1;

    invoke-direct {v0}, Lcom/android/camera/fragment/fullscreen/ShareInfo$1;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->drawableRes:I

    .line 6
    iput p5, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->textRes:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->drawableRes:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->textRes:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->drawableRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->textRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

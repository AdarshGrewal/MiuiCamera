.class public Lcom/xiaomi/camera/isp/IspInterfaceIO;
.super Ljava/lang/Object;
.source "IspInterfaceIO.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/camera/isp/IspInterfaceIO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

.field public mRawInputSize:Landroid/util/Size;

.field public mYuvInputSize:Landroid/util/Size;

.field public mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/isp/IspInterfaceIO$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 9
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    .line 12
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 3
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-eqz p2, :cond_0

    .line 4
    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    .line 5
    new-instance p2, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 6
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/16 v0, 0x23

    invoke-direct {p2, p3, p1, v0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 3
    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    iget-object v3, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object p1, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 5
    invoke-virtual {v2, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 6
    :cond_3
    iget-object v3, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    iget-object v3, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 7
    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object p1, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 8
    invoke-virtual {v2, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-object v0
.end method

.method public getRawInputSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    return-object v0
.end method

.method public getYuvInputSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    return-object v0
.end method

.method public getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 3
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->hashCode()I

    move-result v1

    aput v1, v0, v2

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    :cond_0
    const/4 v5, 0x5

    new-array v5, v5, [I

    .line 5
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v5, v4

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    .line 6
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v5, v3

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v5, v2

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 7
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v5, v1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->hashCode()I

    move-result v1

    aput v1, v5, v0

    .line 8
    invoke-static {v5}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const-string v1, "RawInputSize: %dx%d "

    .line 5
    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 7
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "YuvInputSize: %dx%d "

    .line 8
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

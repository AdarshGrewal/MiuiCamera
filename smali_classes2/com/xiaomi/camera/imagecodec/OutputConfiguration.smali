.class public Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/camera/imagecodec/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFormat:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    .line 3
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    .line 4
    iput p3, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

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

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 3
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    iget v3, p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    iget v3, p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    iget p1, p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "OutputConfiguration(w:%d, h:%d, format:%d)"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

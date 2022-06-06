.class public final Lcom/xiaomi/engine/BufferFormat;
.super Ljava/lang/Object;
.source "BufferFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/engine/BufferFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBufferFormat:I

.field public mBufferHeight:I

.field public mBufferWidth:I

.field public mDepthBufferSize:Landroid/util/Size;

.field public mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/engine/BufferFormat$1;

    invoke-direct {v0}, Lcom/xiaomi/engine/BufferFormat$1;-><init>()V

    sput-object v0, Lcom/xiaomi/engine/BufferFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    return-void
.end method

.method public constructor <init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    iput p2, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    iput p3, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    iput-object p4, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    const-class v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    iput-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

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
    instance-of v1, p1, Lcom/xiaomi/engine/BufferFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/xiaomi/engine/BufferFormat;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    iget v3, p1, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    iget-object v3, p1, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    iget-object p1, p1, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBufferFormat()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    return v0
.end method

.method public getBufferHeight()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    return v0
.end method

.method public getBufferWidth()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    return v0
.end method

.method public getCameraCombinationMode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/engine/GraphDescriptorBean;->getCameraCombinationMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDepthBufferSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    return-object v0
.end method

.method public getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBufferFormat(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    return-void
.end method

.method public setBufferHeight(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    return-void
.end method

.method public setBufferWidth(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    return-void
.end method

.method public setDepthBufferSize(Landroid/util/Size;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    :cond_0
    return-void
.end method

.method public setGraphDescriptor(Lcom/xiaomi/engine/GraphDescriptorBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferFormat{bufferWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", graphDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", depthBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    return-void
.end method

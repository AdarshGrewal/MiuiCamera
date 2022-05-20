.class public final Lcom/xiaomi/engine/GraphDescriptorBean;
.super Ljava/lang/Object;
.source "GraphDescriptorBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/engine/GraphDescriptorBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCameraCombinationMode:I

.field public mIsSnapshot:Z

.field public mOperationModeID:I

.field public mStreamNumber:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean$1;

    invoke-direct {v0}, Lcom/xiaomi/engine/GraphDescriptorBean$1;-><init>()V

    sput-object v0, Lcom/xiaomi/engine/GraphDescriptorBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 3
    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    .line 5
    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 8
    iput p2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    .line 9
    iput-boolean p3, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    .line 10
    iput p4, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

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
    instance-of v1, p1, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 3
    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    iget v3, p1, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    iget v3, p1, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    iget-boolean v3, p1, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    iget p1, p1, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCameraCombinationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    return v0
.end method

.method public getOperationModeID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    return v0
.end method

.method public getStreamNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    return v0
.end method

.method public setCameraCombinationMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    return-void
.end method

.method public setOperationModeID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    return-void
.end method

.method public setSnapshot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    return-void
.end method

.method public setStreamNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "GraphDescriptorBean{mOperationModeID=%s, mStreamNumber=%s, mIsSnapshot=%s, mCameraCombinationMode=0x%x}"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-boolean p2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget p2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

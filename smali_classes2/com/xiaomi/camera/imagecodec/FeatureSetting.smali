.class public Lcom/xiaomi/camera/imagecodec/FeatureSetting;
.super Ljava/lang/Object;
.source "FeatureSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/camera/imagecodec/FeatureSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFrameCount:I

.field public mTuningIndexes:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/FeatureSetting$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/FeatureSetting$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    return v0
.end method

.method public getTuningIndexes()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureSetting{frameCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tuningIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

.class public Lcom/xiaomi/mi_connect_service/DpsCallbackData;
.super Ljava/lang/Object;
.source "DpsCallbackData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mi_connect_service/DpsCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_MESSAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DpsCallbackData"

.field public static final VALID_MESSAGE:I


# instance fields
.field public mCode:I

.field public mMessage:[B

.field public mPartition:Ljava/lang/String;

.field public mTopicName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    .line 3
    iput-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "DpsCallbackData"

    const-string v0, "readFromParcel: invalid message ..."

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    return v0
.end method

.method public getMessage()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    return-object v0
.end method

.method public getPartition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    iget p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    :goto_0
    return-void
.end method

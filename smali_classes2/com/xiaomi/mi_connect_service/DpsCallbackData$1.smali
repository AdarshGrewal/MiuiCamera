.class public final Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;
.super Ljava/lang/Object;
.source "DpsCallbackData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/DpsCallbackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/mi_connect_service/DpsCallbackData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mi_connect_service/DpsCallbackData;
    .locals 1

    .line 2
    new-instance v0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    invoke-direct {v0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/mi_connect_service/DpsCallbackData;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;->newArray(I)[Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    move-result-object p1

    return-object p1
.end method

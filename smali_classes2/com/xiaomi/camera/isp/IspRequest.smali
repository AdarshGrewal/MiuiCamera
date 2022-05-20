.class public Lcom/xiaomi/camera/isp/IspRequest;
.super Ljava/lang/Object;
.source "IspRequest.java"


# instance fields
.field public cropRegion:[I

.field public flipMode:I

.field public functionType:I

.field public inputBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public orientation:I

.field public requestNumber:I

.field public settings:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(IILandroid/os/Parcelable;Ljava/util/ArrayList;[III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspBuffer;",
            ">;[III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/isp/IspRequest;->orientation:I

    .line 3
    iput p1, p0, Lcom/xiaomi/camera/isp/IspRequest;->requestNumber:I

    .line 4
    iput p2, p0, Lcom/xiaomi/camera/isp/IspRequest;->flipMode:I

    .line 5
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspRequest;->settings:Landroid/os/Parcelable;

    .line 6
    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspRequest;->inputBuffers:Ljava/util/ArrayList;

    .line 7
    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspRequest;->cropRegion:[I

    .line 8
    iput p6, p0, Lcom/xiaomi/camera/isp/IspRequest;->functionType:I

    .line 9
    iput p7, p0, Lcom/xiaomi/camera/isp/IspRequest;->orientation:I

    return-void
.end method

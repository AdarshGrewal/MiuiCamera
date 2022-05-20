.class public Lcom/android/camera2/QuickViewParam;
.super Ljava/lang/Object;
.source "QuickViewParam.java"


# instance fields
.field public anchorFrame:Z

.field public needAnchorReadPixel:Z

.field public needDoAnchorFrame:Z

.field public quickShotAnimation:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/camera2/QuickViewParam;->needDoAnchorFrame:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/camera2/QuickViewParam;->needAnchorReadPixel:Z

    return-void
.end method

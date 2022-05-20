.class public final Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
.super Ljava/lang/Object;
.source "CameraFocusPaintOuterRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public mRoundRadius:I

.field public mStickLength:I

.field public mStrokeWidthDp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStrokeWidthDp:F

    .line 3
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method public static aCameraFocusPaintOuterRect(Landroid/content/Context;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStickLength:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStickLength:I

    .line 3
    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStrokeWidthDp:F

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStrokeWidthDp:F

    .line 4
    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mRoundRadius:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mRoundRadius:I

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->reInitPaint()V

    return-object v0
.end method

.method public withRoundRadius(I)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mRoundRadius:I

    return-object p0
.end method

.method public withStickLength(I)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStickLength:I

    return-object p0
.end method

.method public withStrokeWidthDp(F)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStrokeWidthDp:F

    return-object p0
.end method

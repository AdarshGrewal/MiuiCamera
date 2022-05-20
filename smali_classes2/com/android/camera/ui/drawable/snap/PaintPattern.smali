.class public abstract Lcom/android/camera/ui/drawable/snap/PaintPattern;
.super Ljava/lang/Object;
.source "PaintPattern.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/android/camera/ui/drawable/CameraPaintBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/CameraPaintBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->prepareTargetPattern()V

    return-void
.end method


# virtual methods
.method public final calculateCurrentValue(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public abstract directlyResult()V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public abstract interceptDraw()Z
.end method

.method public abstract prepareTargetPattern()V
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method public abstract updateValue(F)V
.end method

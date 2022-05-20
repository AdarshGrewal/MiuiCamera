.class public Lmiuix/view/animation/BackEaseInInterpolator;
.super Ljava/lang/Object;
.source "BackEaseInInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final mOvershot:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/view/animation/BackEaseInInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/view/animation/BackEaseInInterpolator;->mOvershot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 1
    iget v0, p0, Lmiuix/view/animation/BackEaseInInterpolator;->mOvershot:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const v0, 0x3fd9cd60

    :cond_0
    mul-float v1, p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

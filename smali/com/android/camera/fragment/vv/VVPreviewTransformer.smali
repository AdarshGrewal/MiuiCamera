.class public Lcom/android/camera/fragment/vv/VVPreviewTransformer;
.super Ljava/lang/Object;
.source "VVPreviewTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field public static final MAX_ALPHA:F = 1.0f

.field public static final MAX_SCALE:F = 1.0f

.field public static final MIN_ALPHA:F = 1.0f

.field public static final MIN_SCALE:F = 1.0f

.field public static final alphaSlope:F

.field public static final scaleSlope:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    move p2, v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    add-float/2addr p2, v2

    goto :goto_1

    :cond_2
    sub-float p2, v2, p2

    :goto_1
    mul-float/2addr p2, v0

    add-float/2addr p2, v2

    .line 1
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

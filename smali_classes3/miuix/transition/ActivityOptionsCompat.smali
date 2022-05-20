.class public Lmiuix/transition/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeScaleUpAnimationFromRoundedView(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static/range {p0 .. p11}, Landroid/app/ActivityOptions;->makeScaleUpAnimationFromRoundedView(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeScaleUpDown(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p12}, Landroid/app/ActivityOptions;->makeScaleUpDown(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

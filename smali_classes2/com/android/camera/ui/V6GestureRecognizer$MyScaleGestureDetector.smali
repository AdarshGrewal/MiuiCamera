.class public Lcom/android/camera/ui/V6GestureRecognizer$MyScaleGestureDetector;
.super Lcom/android/camera/ui/zoom/ScaleGestureDetector;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyScaleGestureDetector"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleGestureDetector;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getScaledMinimumScalingSpan()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OooO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleGestureDetector;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getScaledMinimumScalingSpan(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

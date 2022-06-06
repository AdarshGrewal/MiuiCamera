.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oo/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oo/OooO0oO;->OooO00o:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oo/OooO0oO;->OooO00o:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

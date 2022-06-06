.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

.field private final synthetic OooO0O0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO0;->OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO0;->OooO0O0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO0;->OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO0;->OooO0O0:Landroid/graphics/Rect;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO00o(Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    return-void
.end method

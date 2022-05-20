.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO0o0;->OooO00o:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO0o0;->OooO00o:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO0O0(Landroid/graphics/Rect;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method

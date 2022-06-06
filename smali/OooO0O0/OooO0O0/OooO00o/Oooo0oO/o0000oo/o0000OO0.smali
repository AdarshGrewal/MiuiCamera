.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000OO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field private final synthetic OooO0O0:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000OO0;->OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000OO0;->OooO0O0:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000OO0;->OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000OO0;->OooO0O0:Landroid/util/Size;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {v0, v1, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO00o(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lcom/android/camera/dualvideo/render/RenderSource;)V

    return-void
.end method

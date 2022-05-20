.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/gallery3d/ui/GLCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooooo;->OooO00o:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooooo;->OooO00o:Lcom/android/gallery3d/ui/GLCanvas;

    check-cast p1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->OooO00o(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscRenderItem;)V

    return-void
.end method

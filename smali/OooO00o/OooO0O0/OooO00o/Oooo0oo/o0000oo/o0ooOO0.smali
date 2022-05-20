.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0ooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/RenderManager;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/RenderManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0ooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/RenderManager;

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0ooOO0;->OooO0O0:I

    iput p3, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0ooOO0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0ooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/RenderManager;

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0ooOO0;->OooO0O0:I

    iget v2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0ooOO0;->OooO0OO:I

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO0O0(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p1

    return p1
.end method

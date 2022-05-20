.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooo0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooo0o0;->OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooo0o0;->OooO00o:Lcom/android/camera/dualvideo/util/RenderSourceType;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO00o(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z

    move-result p1

    return p1
.end method

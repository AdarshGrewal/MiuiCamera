.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/Ooooo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/Ooooo0o;->OooO00o:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/Ooooo0o;->OooO00o:Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Landroid/view/MotionEvent;Lcom/android/camera/dualvideo/render/RenderManager;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

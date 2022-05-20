.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/util/Range;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Range;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo;->OooO00o:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo;->OooO00o:Landroid/util/Range;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Landroid/util/Range;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

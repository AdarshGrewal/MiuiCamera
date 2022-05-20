.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO0oO;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO0oO;->OooO00o:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO00o(ILjava/util/ArrayList;)Lcom/android/camera/dualvideo/render/CameraItemInterface;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:F

.field private final synthetic OooO0O0:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO;->OooO00o:F

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO;->OooO0O0:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO;->OooO00o:F

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000O0/OooO;->OooO0O0:F

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    invoke-static {v0, v1, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO00o(FFLcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    return-object p1
.end method

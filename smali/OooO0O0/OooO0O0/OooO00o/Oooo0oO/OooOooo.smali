.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/OooOooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/LayoutType;

.field private final synthetic OooO0O0:Lcom/android/camera/dualvideo/render/LayoutType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/OooOooo;->OooO00o:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/OooOooo;->OooO0O0:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/OooOooo;->OooO00o:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/OooOooo;->OooO0O0:Lcom/android/camera/dualvideo/render/LayoutType;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {v0, v1, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method

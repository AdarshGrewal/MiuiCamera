.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/LayoutType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o0;->OooO00o:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o0;->OooO00o:Lcom/android/camera/dualvideo/render/LayoutType;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method

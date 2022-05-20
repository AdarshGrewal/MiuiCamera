.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field private final synthetic OooO0O0:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOO0;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOO0;->OooO0O0:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOO0;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOO0;->OooO0O0:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/DollyZoomModule;->OooO00o(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V

    return-void
.end method

.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooOoO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooOoO0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooOoO0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO00o(Lcom/android/camera/dualvideo/render/CameraItem;)V

    return-void
.end method

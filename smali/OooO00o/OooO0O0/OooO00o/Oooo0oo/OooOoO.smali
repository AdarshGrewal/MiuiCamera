.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field private final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoO;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoO;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoO;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO0O0(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

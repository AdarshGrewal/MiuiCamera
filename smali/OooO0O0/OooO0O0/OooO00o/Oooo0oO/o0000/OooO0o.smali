.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

.field private final synthetic OooO0O0:Lcom/android/camera/dualvideo/recorder/MiRecorder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;Lcom/android/camera/dualvideo/recorder/MiRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000/OooO0o;->OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000/OooO0o;->OooO0O0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000/OooO0o;->OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000/OooO0o;->OooO0O0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->OooO00o(Lcom/android/camera/dualvideo/recorder/MiRecorder;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

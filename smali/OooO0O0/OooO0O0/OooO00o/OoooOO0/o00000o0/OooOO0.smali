.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/video/ProVideoModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/video/ProVideoModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0;->OooO00o:Lcom/android/camera/module/video/ProVideoModule;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0;->OooO00o:Lcom/android/camera/module/video/ProVideoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video/ProVideoModule;->OooO00o(Lio/reactivex/FlowableEmitter;)V

    return-void
.end method

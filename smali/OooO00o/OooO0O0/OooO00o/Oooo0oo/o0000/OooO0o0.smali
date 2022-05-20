.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lio/reactivex/SingleEmitter;

.field private final synthetic OooO0O0:J


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/SingleEmitter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o0;->OooO00o:Lio/reactivex/SingleEmitter;

    iput-wide p2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o0;->OooO0O0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o0;->OooO00o:Lio/reactivex/SingleEmitter;

    iget-wide v1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o0;->OooO0O0:J

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->OooO00o(Lio/reactivex/SingleEmitter;JLjava/lang/Boolean;)V

    return-void
.end method

.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooO0OO;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooO0OO;->OooO00o:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/AiAudioController;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method

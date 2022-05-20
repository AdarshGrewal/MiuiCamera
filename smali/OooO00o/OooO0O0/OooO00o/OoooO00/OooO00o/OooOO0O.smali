.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOO0O;->OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOO0O;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOO0O;->OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOO0O;->OooO0O0:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->OooO0O0(Z)V

    return-void
.end method

.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

.field private final synthetic OooO0O0:Lcom/android/camera/storage/mediastore/ImageFile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0o;->OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0o;->OooO0O0:Lcom/android/camera/storage/mediastore/ImageFile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0o;->OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0o;->OooO0O0:Lcom/android/camera/storage/mediastore/ImageFile;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->OooO00o(Lcom/android/camera/storage/mediastore/ImageFile;)V

    return-void
.end method

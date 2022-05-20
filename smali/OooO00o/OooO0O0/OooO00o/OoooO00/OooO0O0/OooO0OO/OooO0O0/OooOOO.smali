.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

.field private final synthetic OooO0O0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO;->OooO0O0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO;->OooO0O0:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->OooO0O0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

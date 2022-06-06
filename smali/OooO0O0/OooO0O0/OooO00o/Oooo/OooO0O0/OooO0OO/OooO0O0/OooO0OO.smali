.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0:[B

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0:[B

    invoke-static {v0, v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->OooO00o(Ljava/lang/String;[BLio/reactivex/SingleEmitter;)V

    return-void
.end method

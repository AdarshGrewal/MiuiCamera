.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0O;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0O;->OooO0O0:[B

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0O;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0O;->OooO0O0:[B

    invoke-static {v0, v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->OooO00o(Ljava/lang/String;[BLio/reactivex/ObservableEmitter;)V

    return-void
.end method

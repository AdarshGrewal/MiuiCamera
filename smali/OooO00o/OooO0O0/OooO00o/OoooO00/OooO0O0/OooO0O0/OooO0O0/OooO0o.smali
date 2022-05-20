.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o;->OooO00o:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o;->OooO00o:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o;->OooO0O0:Z

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V

    return-void
.end method

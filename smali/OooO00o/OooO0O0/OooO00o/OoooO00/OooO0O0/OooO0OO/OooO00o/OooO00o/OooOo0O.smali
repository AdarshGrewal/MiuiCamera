.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0O;->OooO00o:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    return-void
.end method


# virtual methods
.method public final getShareContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0O;->OooO00o:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

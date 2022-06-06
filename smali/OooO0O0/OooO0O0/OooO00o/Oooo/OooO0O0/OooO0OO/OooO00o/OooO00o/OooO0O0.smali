.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

.field private final synthetic OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field private final synthetic OooO0OO:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

.field private final synthetic OooO0Oo:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO0OO:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-boolean p4, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO0OO:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iget-boolean v3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;->OooO0Oo:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;Z)V

    return-void
.end method

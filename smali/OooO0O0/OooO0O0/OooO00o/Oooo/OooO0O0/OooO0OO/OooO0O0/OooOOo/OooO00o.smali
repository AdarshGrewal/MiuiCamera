.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooOOo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooOOo/OooO00o;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0OO/OooO0O0/OooOOo/OooO00o;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->OooO00o(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object p1

    return-object p1
.end method

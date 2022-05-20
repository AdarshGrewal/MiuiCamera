.class public Lcom/android/camera/module/impl/component/FilmDreamImpl$5$1;
.super Ljava/lang/Object;
.source "FilmDreamImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->OnReceiveFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$5;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5$1;->this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5$1;->this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$5;

    iget-object v0, v0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$700(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/data/observeable/FilmDreamProcessing;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    return-void
.end method

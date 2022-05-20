.class public Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;
.super Ljava/lang/Object;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->startSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

.field public final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    iput-object p2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamConfig;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$100(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamRecorderControl;->stopPlayWhenSave()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->val$savePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$200(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Lcom/android/camera/storage/mediastore/VideoFile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "videoFile is NULL, will not save"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$200(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Lcom/android/camera/storage/mediastore/VideoFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/mediastore/VideoFile;->insertContentValues()Landroid/net/Uri;

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$200(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Lcom/android/camera/storage/mediastore/VideoFile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->combineVideoAudio(Lcom/android/camera/storage/mediastore/VideoFile;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->val$savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->combineVideoAudio(Ljava/lang/String;)V

    .line 10
    :cond_3
    :goto_0
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

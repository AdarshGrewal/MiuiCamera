.class public Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;
.super Lcom/android/camera/data/observeable/VMBase;
.source "MimojiViewModel.java"


# instance fields
.field public mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

.field public mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p1
.end method

.method public synthetic OooO0O0(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p1
.end method

.method public achieveEndOfCycle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCartoonListObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    const-string v2, "cartoon.json"

    const-string v3, "mimoji_cartoon_version"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOo0/OooO0O0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOo0/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getHumanListObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    const-string v2, "human.json"

    const-string v3, "mimoji_human_version"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOo0/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOo0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getMimojiCartoonList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object v0
.end method

.method public getMimojiHumanList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object v0
.end method

.method public rollbackData()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-void
.end method

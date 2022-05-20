.class public final Lcom/android/camera/data/observeable/RxData$DataCheck;
.super Ljava/lang/Object;
.source "RxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/observeable/RxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public owner:Landroidx/lifecycle/LifecycleOwner;

.field public final predicateCheck:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataCheck$1;

    invoke-direct {v0, p0}, Lcom/android/camera/data/observeable/RxData$DataCheck$1;-><init>(Lcom/android/camera/data/observeable/RxData$DataCheck;)V

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->predicateCheck:Lio/reactivex/functions/Predicate;

    .line 3
    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method


# virtual methods
.method public getPredicateCheck()Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->predicateCheck:Lio/reactivex/functions/Predicate;

    return-object v0
.end method

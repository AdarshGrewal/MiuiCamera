.class public Lcom/uber/rxdogtag/RxDogTag$Configuration;
.super Ljava/lang/Object;
.source "RxDogTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uber/rxdogtag/RxDogTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# static fields
.field public static final DEFAULT_HANDLER:Lcom/uber/rxdogtag/ObserverHandler;

.field public static final DEFAULT_IGNORED_PACKAGES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final disableAnnotations:Z

.field public final guardObserverCallbacks:Z

.field public final ignoredPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final observerHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uber/rxdogtag/ObserverHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final repackageOnErrorNotImplementedExceptions:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lio/reactivex/Observable;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/uber/rxdogtag/DogTagObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->DEFAULT_IGNORED_PACKAGES:Ljava/util/Collection;

    new-instance v0, Lcom/uber/rxdogtag/RxDogTag$Configuration$1;

    invoke-direct {v0}, Lcom/uber/rxdogtag/RxDogTag$Configuration$1;-><init>()V

    sput-object v0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->DEFAULT_HANDLER:Lcom/uber/rxdogtag/ObserverHandler;

    return-void
.end method

.method public constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->disableAnnotations:Z

    iput-boolean v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->disableAnnotations:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->observerHandlers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/uber/rxdogtag/RxDogTag$Configuration;->DEFAULT_HANDLER:Lcom/uber/rxdogtag/ObserverHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->ignoredPackages:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/uber/rxdogtag/RxDogTag$Configuration;->DEFAULT_IGNORED_PACKAGES:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->observerHandlers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->ignoredPackages:Ljava/util/Set;

    iget-boolean v0, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->repackageOnErrorNotImplementedExceptions:Z

    iput-boolean v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->repackageOnErrorNotImplementedExceptions:Z

    iget-boolean p1, p1, Lcom/uber/rxdogtag/RxDogTag$Builder;->guardObserverCallbacks:Z

    iput-boolean p1, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->guardObserverCallbacks:Z

    return-void
.end method

.class public final Ljava8/util/Iterators$2;
.super Ljava8/util/Iterators$ImmutableIt;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Iterators;->singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/Iterators$ImmutableIt<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public hasNext:Z

.field public final synthetic val$e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/Iterators$2;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/Iterators$ImmutableIt;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ljava8/util/Iterators$2;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/Iterators$2;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/Iterators$2;->hasNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljava8/util/Iterators$2;->hasNext:Z

    .line 3
    iget-object v0, p0, Ljava8/util/Iterators$2;->val$e:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.class public Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->initAnimConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 3
    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    if-ne p2, v0, :cond_0

    .line 4
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$302(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Z)Z

    :cond_1
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 3
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-static {v0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$200(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$300(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-static {v0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$400(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V

    goto :goto_0

    :cond_2
    return-void
.end method

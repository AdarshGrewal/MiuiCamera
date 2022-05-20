.class public Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;
.super Ljava/lang/Object;
.source "DefaultSingleItemCalculatorCallback.java"

# interfaces
.implements Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback<",
        "Lcom/android/camera/visibilityutils/items/ListItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final SHOW_LOGS:Z = false

.field public static final TAG:Ljava/lang/String; = "DefaultSingleItemCalculatorCallback"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateNewCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lcom/android/camera/visibilityutils/items/ListItem;->setActive(Landroid/view/View;I)V

    return-void
.end method

.method public deactivateCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lcom/android/camera/visibilityutils/items/ListItem;->deactivate(Landroid/view/View;I)V

    return-void
.end method

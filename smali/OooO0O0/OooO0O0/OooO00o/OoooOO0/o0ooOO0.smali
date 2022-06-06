.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/module/VideoBase$OnTagsListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/VideoModule;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:Landroid/content/ContentValues;

.field private final synthetic OooO0Oo:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO00o:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO0OO:Landroid/content/ContentValues;

    iput-boolean p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public final onTagsReady(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO00o:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO0OO:Landroid/content/ContentValues;

    iget-boolean v3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o0ooOO0;->OooO0Oo:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/camera/module/VideoModule;->OooO00o(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/util/List;)V

    return-void
.end method

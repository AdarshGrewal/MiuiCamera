.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/module/VideoBase$OnTagsListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/VideoModule;

.field private final synthetic OooO0O0:Landroid/net/Uri;

.field private final synthetic OooO0OO:Ljava/lang/String;

.field private final synthetic OooO0Oo:Landroid/content/ContentValues;

.field private final synthetic OooO0o0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO00o:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0O0:Landroid/net/Uri;

    iput-object p3, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0OO:Ljava/lang/String;

    iput-object p4, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0Oo:Landroid/content/ContentValues;

    iput-boolean p5, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0o0:Z

    return-void
.end method


# virtual methods
.method public final onTagsReady(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO00o:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0O0:Landroid/net/Uri;

    iget-object v2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0OO:Ljava/lang/String;

    iget-object v3, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0Oo:Landroid/content/ContentValues;

    iget-boolean v4, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;->OooO0o0:Z

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->OooO00o(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZLjava/util/List;)V

    return-void
.end method

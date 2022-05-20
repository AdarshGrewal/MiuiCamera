.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$Expandable;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Expandable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/ModeProtocol$Expandable$DismissType;
    }
.end annotation


# static fields
.field public static final DISMISS_ALPHA:I = 0x3

.field public static final DISMISS_MUTEX:I = 0x4

.field public static final DISMISS_SILENT:I = 0x1

.field public static final DISMISS_SLIDE:I = 0x2

.field public static final KEEP:I


# virtual methods
.method public abstract dismiss(II)Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract show()V
.end method

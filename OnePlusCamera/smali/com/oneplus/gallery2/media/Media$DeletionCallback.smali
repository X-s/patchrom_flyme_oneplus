.class public abstract Lcom/oneplus/gallery2/media/Media$DeletionCallback;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeletionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCancelled(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

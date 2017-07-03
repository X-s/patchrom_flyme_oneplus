.class public abstract Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
.super Ljava/lang/Object;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaDeletionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "success"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public onDeletionProcessCompleted()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onDeletionProcessStarted()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 121
    return-void
.end method

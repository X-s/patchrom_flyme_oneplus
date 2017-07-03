.class public abstract Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;
.super Ljava/lang/Object;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaSetDeletionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 0
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "success"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public onDeletionProcessCompleted()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onDeletionProcessStarted()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 155
    return-void
.end method

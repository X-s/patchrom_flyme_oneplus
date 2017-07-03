.class public abstract Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;
.super Ljava/lang/Object;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/AlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AlbumCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumCreationCompleted(JZ[Lcom/oneplus/gallery2/media/AlbumMediaSet;I)V
    .locals 0
    .param p1, "albumId"    # J
    .param p3, "success"    # Z
    .param p4, "mediaSets"    # [Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .param p5, "flags"    # I

    .prologue
    .line 86
    return-void
.end method

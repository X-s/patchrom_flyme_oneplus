.class public abstract Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/AlbumMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RenameCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameCompleted(Lcom/oneplus/gallery2/media/AlbumMediaSet;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "album"    # Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .param p2, "success"    # Z
    .param p3, "oldName"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    .line 24
    return-void
.end method

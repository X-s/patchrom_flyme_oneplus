.class Lcom/oneplus/gallery/media/MediaStoreMediaSet$5;
.super Lcom/oneplus/base/Handle;
.source "MediaStoreMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$5;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 458
    return-void
.end method

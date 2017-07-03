.class Lcom/oneplus/gallery2/media/DirectoryMediaSet$2;
.super Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;
.source "DirectoryMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/DirectoryMediaSet;->startDeletion(Lcom/oneplus/base/Handle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

.field final synthetic val$deletionHandle:Lcom/oneplus/base/Handle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/DirectoryMediaSet;Lcom/oneplus/base/Handle;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$2;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$2;->val$deletionHandle:Lcom/oneplus/base/Handle;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "result"    # I
    .param p4, "flags"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$2;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$2;->val$deletionHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p4}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 346
    return-void
.end method

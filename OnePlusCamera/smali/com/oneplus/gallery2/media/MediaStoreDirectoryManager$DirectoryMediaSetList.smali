.class final Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
.super Lcom/oneplus/gallery2/media/BaseMediaSetList;
.source "MediaStoreDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryMediaSetList"
.end annotation


# instance fields
.field public final targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 96
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V

    .line 97
    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 98
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->release()V

    .line 105
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->access$1(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V

    .line 106
    return-void
.end method

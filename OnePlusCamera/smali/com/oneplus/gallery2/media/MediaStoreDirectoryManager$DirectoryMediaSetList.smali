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
    .line 104
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 105
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V

    .line 106
    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 107
    return-void
.end method


# virtual methods
.method public ready()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->release()V

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->access$2(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V

    .line 121
    return-void
.end method

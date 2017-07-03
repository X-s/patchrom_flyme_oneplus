.class Lcom/oneplus/gallery/media/MediaManagerImpl$4;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$4;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 270
    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    :cond_0
    :goto_0
    return-void

    .line 258
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_3

    move-object v0, p1

    .line 260
    check-cast v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$4;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    check-cast p1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v2

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->removeDirectoryMediaSetFromActiveSetList(J)V
    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$500(Lcom/oneplus/gallery/media/MediaManagerImpl;J)V

    goto :goto_0

    .line 263
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$4;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    check-cast p1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v2

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetDeleted(J)V
    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$300(Lcom/oneplus/gallery/media/MediaManagerImpl;J)V

    goto :goto_0

    .line 267
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :cond_3
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$4;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    check-cast p1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->addDirectoryMediaSetToActiveSetList(Lcom/oneplus/gallery/media/DirectoryMediaSet;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$600(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/DirectoryMediaSet;)V

    goto :goto_0
.end method

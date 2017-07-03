.class Lcom/oneplus/gallery/media/MediaManagerImpl$3;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$3;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 239
    check-cast v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    sget-object v2, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 240
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 248
    .end local v0    # "count":Ljava/lang/Integer;
    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v0    # "count":Ljava/lang/Integer;
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$3;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v4

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetDeleted(J)V
    invoke-static {v2, v4, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$300(Lcom/oneplus/gallery/media/MediaManagerImpl;J)V

    .line 245
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$3;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directoryMediaSetContainsRecycledMediaCB() - delete directory media set, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

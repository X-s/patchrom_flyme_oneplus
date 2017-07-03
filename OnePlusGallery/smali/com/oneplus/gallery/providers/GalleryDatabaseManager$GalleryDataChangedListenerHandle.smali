.class final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;
.super Lcom/oneplus/base/Handle;
.source "GalleryDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GalleryDataChangedListenerHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/base/Handle;"
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final listenerHandleList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<TT;>;>;",
            "Landroid/os/Handler;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<TT;>;"
    .local p1, "listenerHandleList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<TT;>;>;"
    .local p3, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<TT;>;"
    const-string v0, "GalleryDataChangedListenerHandle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listenerHandleList:Ljava/util/Collection;

    .line 182
    iput-object p2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 183
    iput-object p3, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 184
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 189
    .local p0, "this":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<TT;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listenerHandleList:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listenerHandleList:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    return-void
.end method

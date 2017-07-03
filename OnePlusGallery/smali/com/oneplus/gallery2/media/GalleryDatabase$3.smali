.class final Lcom/oneplus/gallery2/media/GalleryDatabase$3;
.super Lcom/oneplus/base/CallbackHandle;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->addExtraMediaInfoChangeCallback(Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
        "<",
        "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Handler;

    .prologue
    .line 722
    .local p2, "x1":Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;, "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 726
    # getter for: Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 728
    :try_start_0
    # getter for: Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 729
    monitor-exit v1

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

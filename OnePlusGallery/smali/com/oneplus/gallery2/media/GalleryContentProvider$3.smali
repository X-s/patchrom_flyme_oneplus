.class Lcom/oneplus/gallery2/media/GalleryContentProvider$3;
.super Ljava/lang/Object;
.source "GalleryContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryContentProvider;->queryRecycledMedia()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

.field final synthetic val$cursorRef:Lcom/oneplus/base/Ref;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/GalleryContentProvider;Lcom/oneplus/base/Ref;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;->val$cursorRef:Lcom/oneplus/base/Ref;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;->val$cursorRef:Lcom/oneplus/base/Ref;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    # invokes: Lcom/oneplus/gallery2/media/GalleryContentProvider;->queryRecycledMedia()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->access$100(Lcom/oneplus/gallery2/media/GalleryContentProvider;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/oneplus/gallery/editor/NetEaseFilter$3;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/NetEaseFilter;->onApplyFilter(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$syncLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    iput-object p2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->val$finalBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->val$syncLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->val$finalBitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery/editor/NetEaseFilter;->prepareFinalResultFilterSDK(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->access$1600(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;)V

    .line 614
    iget-object v1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->val$syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->access$1700(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onApplyFilter() - Final result preparation started, notify"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$3;->val$syncLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

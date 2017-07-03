.class Lcom/oneplus/gallery/editor/NetEaseFilter$5;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/NetEaseFilter;->onFilterSDKTextureLoaded(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

.field final synthetic val$task:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$5;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    iput-object p2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$5;->val$task:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$5;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    # invokes: Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->access$1900(Lcom/oneplus/gallery/editor/NetEaseFilter;Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V

    .line 845
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$5;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$5;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->access$2000(Lcom/oneplus/gallery/editor/NetEaseFilter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2711

    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$5;->val$task:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    iget-object v2, v2, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 861
    :cond_0
    return-void
.end method

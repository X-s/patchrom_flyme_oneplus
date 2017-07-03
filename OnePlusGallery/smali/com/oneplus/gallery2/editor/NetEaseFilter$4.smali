.class Lcom/oneplus/gallery2/editor/NetEaseFilter$4;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->onFilterSDKPrepared(Lcom/oneplus/gallery2/editor/NetEaseFilter$FilterPreparationTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

.field final synthetic val$task:Lcom/oneplus/gallery2/editor/NetEaseFilter$FilterPreparationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/NetEaseFilter;Lcom/oneplus/gallery2/editor/NetEaseFilter$FilterPreparationTask;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$4;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    iput-object p2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$4;->val$task:Lcom/oneplus/gallery2/editor/NetEaseFilter$FilterPreparationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextureLoadComplete()V
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$4;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1800(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e23

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$4;->val$task:Lcom/oneplus/gallery2/editor/NetEaseFilter$FilterPreparationTask;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 789
    return-void
.end method

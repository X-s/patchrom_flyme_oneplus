.class Lcom/oneplus/gallery2/editor/NetEaseFilter$10;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->prepareFilterSDK(Landroid/graphics/Bitmap;Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/NetEaseFilter;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$10;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreparationFinished(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$10;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/base/BaseObject;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$10;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1800(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e22

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$10;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_FilterPreparationTask:Lcom/oneplus/gallery2/editor/NetEaseFilter$FilterPreparationTask;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$2200(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Lcom/oneplus/gallery2/editor/NetEaseFilter$FilterPreparationTask;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1123
    if-nez p1, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$10;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$2300(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareFilterSDK() - Prepare filter SDK failed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

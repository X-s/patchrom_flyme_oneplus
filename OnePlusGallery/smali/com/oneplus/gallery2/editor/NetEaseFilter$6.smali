.class Lcom/oneplus/gallery2/editor/NetEaseFilter$6;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->onFinalResultFilterSDKPrepared()V
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
    .line 882
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$6;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextureLoadComplete()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$6;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1800(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e27

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 887
    return-void
.end method

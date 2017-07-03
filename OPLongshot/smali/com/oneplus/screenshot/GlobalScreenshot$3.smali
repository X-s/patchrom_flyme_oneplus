.class Lcom/oneplus/screenshot/GlobalScreenshot$3;
.super Landroid/os/Handler;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 642
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 643
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 644
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 646
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 647
    .local v1, "top":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->isUnsupported(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 648
    .local v0, "support":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$3;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 650
    return-void

    .line 647
    .end local v0    # "support":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

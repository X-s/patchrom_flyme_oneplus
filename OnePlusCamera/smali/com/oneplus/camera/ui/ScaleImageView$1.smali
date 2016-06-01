.class Lcom/oneplus/camera/ui/ScaleImageView$1;
.super Landroid/os/AsyncTask;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$1;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 598
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 613
    const-wide/16 v2, 0x15e

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 616
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$1;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    const/4 v2, 0x1

    # setter for: Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z
    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->access$402(Lcom/oneplus/camera/ui/ScaleImageView;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 598
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$1;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z
    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->access$400(Lcom/oneplus/camera/ui/ScaleImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$1;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$402(Lcom/oneplus/camera/ui/ScaleImageView;Z)Z

    .line 604
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$1;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I
    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->access$200(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$1;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->performClick()Z

    .line 608
    :cond_0
    return-void
.end method

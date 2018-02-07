.class Lcom/oneplus/lib/app/OPAlertController$1;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/OPAlertController;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get4(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get5(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get5(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 140
    :goto_0
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get8(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v2}, Lcom/oneplus/lib/app/OPAlertController;->-get7(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get0(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get1(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get1(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0

    .line 134
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get2(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get3(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get3(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 137
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0
.end method

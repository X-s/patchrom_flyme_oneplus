.class Lcom/oneplus/widget/ScaleImageView$1;
.super Landroid/os/Handler;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$1;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$1;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->-wrap1(Lcom/oneplus/widget/ScaleImageView;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 265
    :cond_0
    return-void
.end method

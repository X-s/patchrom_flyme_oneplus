.class Lcom/oneplus/settings/quickpay/SceneAnimation$1;
.super Landroid/os/Handler;
.source "SceneAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/SceneAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/SceneAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quickpay/SceneAnimation;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 23
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 22
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v1}, Lcom/oneplus/settings/quickpay/SceneAnimation;->-get1(Lcom/oneplus/settings/quickpay/SceneAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/SceneAnimation;->-get0(Lcom/oneplus/settings/quickpay/SceneAnimation;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 29
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 30
    .local v0, "pFrameNo":I
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v1}, Lcom/oneplus/settings/quickpay/SceneAnimation;->-get1(Lcom/oneplus/settings/quickpay/SceneAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/SceneAnimation;->-get0(Lcom/oneplus/settings/quickpay/SceneAnimation;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v1}, Lcom/oneplus/settings/quickpay/SceneAnimation;->-get2(Lcom/oneplus/settings/quickpay/SceneAnimation;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v1, v3}, Lcom/oneplus/settings/quickpay/SceneAnimation;->-wrap0(Lcom/oneplus/settings/quickpay/SceneAnimation;I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/settings/quickpay/SceneAnimation;->-wrap0(Lcom/oneplus/settings/quickpay/SceneAnimation;I)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

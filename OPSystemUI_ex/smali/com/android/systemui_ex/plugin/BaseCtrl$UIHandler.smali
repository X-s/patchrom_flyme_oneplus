.class Lcom/android/systemui_ex/plugin/BaseCtrl$UIHandler;
.super Landroid/os/Handler;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/plugin/BaseCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/plugin/BaseCtrl;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/plugin/BaseCtrl;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/BaseCtrl$UIHandler;->this$0:Lcom/android/systemui_ex/plugin/BaseCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v2, p1, Landroid/os/Message;->what:I

    .line 87
    .local v2, "what":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 88
    .local v0, "action":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .local v1, "data":Ljava/lang/Object;
    packed-switch v2, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui_ex/plugin/BaseCtrl$UIHandler;->this$0:Lcom/android/systemui_ex/plugin/BaseCtrl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui_ex/plugin/BaseCtrl;->handleSendAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui_ex/plugin/BaseCtrl$UIHandler;->this$0:Lcom/android/systemui_ex/plugin/BaseCtrl;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->handleSendAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
